import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:flutter_google_auth/services/secure_storage.dart';

class GraphQlService {
  static GraphQlService? _instance;
  late final GraphQLClient _client;

  static GraphQlService getInstance() {
    _instance ??= GraphQlService._internal();
    return _instance!;
  }

  GraphQLClient get client => _client;

  GraphQlService._internal() {
    final String serverBaseUrl =
        dotenv.env['SERVER_API_ENDPOINT'] ?? 'http://10.0.2.2:4000';
    final HttpLink httpLink = HttpLink(
      '$serverBaseUrl/graphql',
    );
    final storage = SecureStorage.getInstance();
    final AuthLink authLink = AuthLink(getToken: () async {
      final jwtToken = await storage.getJwtToken();

      return jwtToken == null ? null : 'Bearer $jwtToken';
    });
    final Link link = authLink.concat(httpLink);
    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }
}
