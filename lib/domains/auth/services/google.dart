import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleTokens {
  const GoogleTokens({required String idToken, String? accessToken});
}

class GoogleUser {
  final String id;
  final String email;
  final String? displayName;

  const GoogleUser({
    required this.id,
    required this.email,
    this.displayName,
  });
}

class GoogleSignInResult {
  final GoogleTokens tokens;
  final GoogleUser user;

  const GoogleSignInResult({required this.tokens, required this.user});
}

class GoogleService {
  static GoogleService? _instance;
  late GoogleSignIn _googleSignIn;

  static GoogleService getInstance() {
    _instance ??= GoogleService._internal();
    return _instance!;
  }

  GoogleService._internal() {
    _googleSignIn = GoogleSignIn(
      clientId: dotenv.env['GOOGLE_OAUTH_CLIENT_ID'],
      scopes: [
        'email',
        'profile',
        'openid',
      ],
    );
  }

  Future<GoogleSignInAuthentication> _openAuthPopUp() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    if (googleSignInAccount == null) {
      throw Exception('Google SignIn Account not defined');
    }

    final GoogleSignInAuthentication googleSignInAuth =
        await googleSignInAccount.authentication;

    return googleSignInAuth;
  }

  Future<GoogleUser?> _user() async {
    if (await _googleSignIn.isSignedIn()) {
      final GoogleSignInAccount? googleUser = _googleSignIn.currentUser;

      if (googleUser != null) {
        return GoogleUser(
          id: googleUser.id,
          displayName: googleUser.displayName,
          email: googleUser.email,
        );
      }
    }

    return null;
  }

  void _printingIdToken(idToken) {
    String token = idToken;

    // ignore: avoid_print
    print('Printing Google Id Token');

    while (token.isNotEmpty) {
      int initLength = (token.length >= 500 ? 500 : token.length);

      // ignore: avoid_print
      print(token.substring(0, initLength));

      int endLength = token.length;

      token = token.substring(initLength, endLength);
    }
  }

  Future<GoogleSignInResult> signIn() async {
    final GoogleSignInAuthentication(:idToken, :accessToken) =
        await _openAuthPopUp();

    if (idToken == null) {
      throw Exception('Google idToken not returned');
    }

    if (kDebugMode) _printingIdToken(idToken);

    final googleUser = await _user();

    if (googleUser == null) {
      throw Exception('Something went wrong with Google Authentication');
    }

    return GoogleSignInResult(
      tokens: GoogleTokens(idToken: idToken, accessToken: accessToken),
      user: GoogleUser(
        id: googleUser.id,
        email: googleUser.email,
        displayName: googleUser.displayName,
      ),
    );
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
