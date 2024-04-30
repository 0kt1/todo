import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

HttpLink _httpLink = HttpLink('http://localhost:4000/graphql');

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: _httpLink,
    cache: GraphQLCache(),
  ),
);
