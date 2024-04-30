import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:untitled/graphql/client.dart';
import 'package:untitled/todoscreen.dart';
//import 'package:untitled/addwork.dart';
// import 'nothing.dart';

void main() {
  runApp(
    GraphQLProvider(
      client: client,
      child: const MaterialApp(
      home: ToDo(),
        ),
    ));
}







