import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get graphqlEndpoint => dotenv.env['GRAPHQL_ENDPOINT'] ?? 'http://localhost:5000/graphql';
  static bool get debugMode => (dotenv.env['DEBUG_MODE'] ?? 'false').toLowerCase() == 'true';
  static int get apiTimeout => int.tryParse(dotenv.env['API_TIMEOUT'] ?? '30000') ?? 30000;

  static Future<void> initialize() async {
    await dotenv.load();
  }
}
