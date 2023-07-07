import 'package:flutter/material.dart';

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
          backgroundColor: Colors.deepPurple[900],
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
