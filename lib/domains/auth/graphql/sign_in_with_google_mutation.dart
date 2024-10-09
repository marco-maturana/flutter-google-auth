import 'package:flutter_google_auth/services/graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:flutter_google_auth/domains/auth/models/user.dart';

import 'sign_in_with_google_mudation.graphql.dart';

class SignInWithGoogleResult {
  final String token;
  final User user;

  SignInWithGoogleResult({required this.token, required this.user});
}

Future<SignInWithGoogleResult> signInWithGoogleMutation(
    String googleIdToken) async {
  final GraphQLClient graphQlClient = GraphQlService.getInstance().client;

  final variables = Variables$Mutation$SignInWithGoogle(
    googleToken: googleIdToken,
  );
  final options = Options$Mutation$SignInWithGoogle(variables: variables);
  final result = await graphQlClient.mutate$SignInWithGoogle(options);

  final signInWithGoogle = result.parsedData?.signInWithGoogle;

  if (result.hasException) throw Error();
  if (signInWithGoogle == null) throw Error();

  return SignInWithGoogleResult(
    token: signInWithGoogle.token,
    user: User(
      id: signInWithGoogle.user.$_id,
      firstName: signInWithGoogle.user.firstName,
      lastName: signInWithGoogle.user.lastName,
      email: signInWithGoogle.user.email,
    ),
  );
}
