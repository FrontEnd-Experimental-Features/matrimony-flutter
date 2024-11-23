import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../config/app_config.dart';

class GraphQLConfig {
  static const _storage = FlutterSecureStorage();
  static const _tokenKey = 'auth_token';

  static ValueNotifier<GraphQLClient> initializeClient() {
    final HttpLink httpLink = HttpLink(AppConfig.graphqlEndpoint);

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final token = await _storage.read(key: _tokenKey);
        if (token != null) return 'Bearer $token';
        return null;
      },
    );

    final Link link = authLink.concat(httpLink);

    final GraphQLClient client = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
      ),
    );

    return ValueNotifier(client);
  }

  static Future<void> setAuthToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  static Future<void> clearAuthToken() async {
    await _storage.delete(key: _tokenKey);
  }
}
