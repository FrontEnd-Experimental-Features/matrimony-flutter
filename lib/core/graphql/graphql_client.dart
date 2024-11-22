import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/app_config.dart';

class GraphQLConfig {
  static ValueNotifier<GraphQLClient> initializeClient() {
    final HttpLink httpLink = HttpLink(AppConfig.graphqlEndpoint);

    final GraphQLClient client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );

    return ValueNotifier(client);
  }
}
