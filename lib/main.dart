import 'package:flutter/material.dart';
//import 'package:untitled/addwork.dart';
import 'nothing.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}



class Todo {

  String Work;
  bool over;
  Todo({required this.Work, this.over = false,});

}

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {},
                    title: Text(todos[index],
                    style: const TextStyle(
                      fontFamily: 'Bruno'
                    ),
                    ),
                    leading: const Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {

            });
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddWork()),);
          },


          child: const Icon(
            Icons.add_circle,
          ),

        ),
        ),
      );
  }
}

List<String> todos = [
  'apply for webops',
  'go to shopping',
  'complete homework'
];
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
              fontWeight: FontWeight.normal

              ,
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
                ElevatedButton(
                    child: Text('OK'),
                    onPressed: (){
                      todos.add(InputController.text);
                      print(InputController.text);
                      //print(todos[0]);
                      //print(InputController.text);
                      //print(todos);
                      Navigator.pop(context,InputController.text);
                    }
                )
              ],
            )
        )
    );
  }
}
