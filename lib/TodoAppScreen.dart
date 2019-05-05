import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}
  class _ToDoAppState extends State<ToDoApp> {

   final TextEditingController controller = new TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(

        appBar: AppBar(
          title: Text("To-Do"),
        ), //appbar
        floatingActionButton: FloatingActionButton(

            onPressed: () {


    showDialog(context: context,
      builder: (BuildContext newContext){
      return AlertDialog(
          title: Text("Add new Task"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: "Write something here! "),
            ), // TextField
            RaisedButton(onPressed: () {},

              child: Text("Add me"),

            )
          ],
        ),
      );
    }
    );
            },
            child: Icon(Icons.add),

        ), // floating action button
        body: Container(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: "Write something here! "),
          ), // TextField

        ),// container
      ); //scaffold

    }
  }

