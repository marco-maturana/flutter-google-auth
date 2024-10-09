import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:flutter_google_auth/services/graphql.dart';
import 'package:flutter_google_auth/ui/app.dart';

Future<void> main() async {
  await dotenv.load();

  final graphQlClient = GraphQlService.getInstance().client;

  final ValueNotifier<GraphQLClient> graphQlClientValueNotifier =
      ValueNotifier(graphQlClient);

  runApp(
    ProviderScope(
      child: GraphQLProvider(
        client: graphQlClientValueNotifier,
        child: const App(),
      ),
    ),
  );
}
