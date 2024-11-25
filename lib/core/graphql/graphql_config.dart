import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GraphQLConfig {
  static const String _tokenKey = 'auth_token';
  static const _storage = FlutterSecureStorage();

  static Future<String?> getAuthToken() async {
    return await _storage.read(key: _tokenKey);
  }

  static Future<void> setAuthToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  static Future<void> clearAuthToken() async {
    await _storage.delete(key: _tokenKey);
  }

  static ValueNotifier<GraphQLClient> initializeClient() {
    final HttpLink httpLink = HttpLink(
      dotenv.env['GRAPHQL_ENDPOINT'] ?? 'http://localhost:5000/graphql',
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer ${await getAuthToken()}',
    );

    final Link link = authLink.concat(httpLink);

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );

    return ValueNotifier(client);
  }

  static Future<void> resetClient(GraphQLClient client) async {
    await client.resetStore();
  }
}
