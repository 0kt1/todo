import 'package:flutter/material.dart';
import 'package:untitled/addwork.dart';


void main() {
  runApp(const MaterialApp(
    home: ToDo(),
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
          title: Text(
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
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {},
                    title: Text(todos[index],
                    style: TextStyle(
                      fontFamily: 'Bruno'
                    ),
                    ),
                    leading: Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddWork()),);
          },
          child: Icon(
            Icons.add_circle,
          ),
        ),
        ),
      );
  }

}
