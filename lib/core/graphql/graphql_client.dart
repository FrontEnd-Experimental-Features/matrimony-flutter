import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static const String _graphQLEndpoint = 'http://XXX.XXX.XXX:X000/graphql';

  static ValueNotifier<GraphQLClient> initializeClient() {
    final HttpLink httpLink = HttpLink(_graphQLEndpoint);

    final GraphQLClient client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );

    return ValueNotifier(client);
  }
}
