import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:untitled/addtodo.dart';
import 'package:untitled/graphql/mutations.dart';
import 'package:untitled/graphql/queries.dart';

// class Todo {
//   String Work;
//   bool over;
//   Todo({
//     required this.Work,
//     this.over = false,
//   });
// }

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(document: gql(Queries().todos)),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.exception?.linkException?.originalException != null) {
            return const Scaffold(
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Please check your Network Connection",
                    style: TextStyle(
                      fontFamily: "Poppins-Regular",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              )),
            );
          }

          if (result.isLoading) {
            return const Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          var data = result.data!["todos"];

          if (data != null) {
            todos = data;
            print(data);
          }

          Map resultMap = {};

          // todos.forEach((todo) {
          //   todo.forEach((key, value) {
          //     resultMap[key] = value;
          //   });
          // });

          for (var item in todos) {
            // Extract title and id from each item
            String title = item['title'];
            String id = item['id'];

            // Create a map with title and id
            //// Map<String, String> todoMap = {'title': title, 'id': id};
            ///// Add the map to extractedData list
            resultMap[title] = id;
          }
          ;

          // print(resultMap);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: const Text(
                  'ToDo',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.deepPurple[900],
              ),
              body: ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 4.0),
                      child: Card(
                        child: ListTile(
                          onTap: () {},
                          title: Text(
                            todos[index]["title"],
                            style: TextStyle(fontFamily: 'Bruno'),
                          ),
                          leading: Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.lightBlueAccent,
                          ),
                          trailing: Mutation(
                            options: MutationOptions(
                                document: gql(Mutations().toggleTodo),
                                onCompleted: (dynamic resultData) {
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

                              return IconButton(
                                onPressed: () {
                                  runMutation({
                                    "toggleTodoStatusId": todos[index]['id']
                                  });
                                },
                                icon: todos[index]["completed"] == true
                                    ? Icon(Icons.check_circle_outline_outlined)
                                    : Icon(Icons.circle_outlined),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  }),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddWork()),
                  );
                },
                child: Icon(
                  Icons.add_circle,
                ),
              ),
            ),
          );
        });
  }
}

List todos = [];
