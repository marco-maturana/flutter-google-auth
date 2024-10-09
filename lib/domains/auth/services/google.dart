import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleTokens {
  final String idToken;
  final String? accessToken;

  const GoogleTokens({required this.idToken, this.accessToken});
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

  Future<GoogleTokens> signIn() async {
    final GoogleSignInAuthentication(:idToken, :accessToken) =
        await _openAuthPopUp();

    if (idToken == null) {
      throw Exception('Google idToken not returned');
    }

    if (kDebugMode) _printingIdToken(idToken);

    return GoogleTokens(idToken: idToken, accessToken: accessToken);
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
