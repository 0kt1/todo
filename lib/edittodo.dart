import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:untitled/graphql/mutations.dart';
import 'package:untitled/todoscreen.dart';

// ignore: must_be_immutable
class EditTodo extends StatefulWidget {
  final String taskid;

  EditTodo({required this.taskid});

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  final InputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(widget.taskid);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Text(
            'Edit Work',
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
                      document: gql(Mutations().editTodo),
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
                        runMutation({
                          "editTaskId": widget.taskid,
                          "title": InputController.text
                        });
                      },
                    );
                  },
                ),
              ],
            )));
    ;
  }
}
