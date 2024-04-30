import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:untitled/graphql/mutations.dart';
import 'package:untitled/todoscreen.dart';

class AddWork extends StatefulWidget {
  const AddWork({Key? key}) : super(key: key);

  @override
  State<AddWork> createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
  final InputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Text(
            'Add Work',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: InputController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'To Solve Tutorial of PH1020',
                    ),
                  ),
                ),
                Mutation(
                  options: MutationOptions(
                      document: gql(Mutations().addTodo),
                      onCompleted: (dynamic resultData) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const ToDo()),
                          (route) => false,
                        );
                        // Navigator.of(context).pop();
                        // print(resultData);
                      },
                      onError: (dynamic resultError) {
                        print("resultError: $resultError");
                      }),
                  builder: (
                    RunMutation runMutation,
                    QueryResult? result,
                  ) {
                    if (result!.isLoading) {
                      CircularProgressIndicator();
                      // Show a loading indicator while the mutation is in progress
                      // return Scaffold(
                      //   backgroundColor: Colors.white,
                      //     body: Center(child: CircularProgressIndicator())
                      // );
                    }
                    ;

                    return ElevatedButton(
                      child: Text('OK'),
                      onPressed: () {
                        runMutation({"title": InputController.text});
                      },
                    );
                  },
                ),
              ],
            )));
  }
}
