import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/Model/todo.dart';
import 'package:path/path.dart';

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}
  class _ToDoAppState extends State<ToDoApp> {


    final TextEditingController controller = new TextEditingController();
    List<ToDo> todoList = [];
    int count = 0;

    void addToDoItem() {
      ToDo item = ToDo();
      item.task = controller.text;
      item.isCompleted = false;
      item.id = count++;
      setState(() {
        todoList.add(item);
        controller.text = "";
      });
      //   Navigator.of(context).pop();
    }

    void deleteTodoItem(index) {
      setState(() {
        todoList.removeAt(index);
      });
    }






    @override
    Widget build(BuildContext context) {
      print(todoList);
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
            ),
            SizedBox(height: 20,),// TextField
            RaisedButton(onPressed: (


                ) {
              addToDoItem();
            },

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
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Checkbox(
                value: todoList[index].isCompleted,
              // value: false,
                onChanged: (val){
                  int indexOfObject = todoList.indexOf(todoList[index]);
                  ToDo item=todoList[index];
                  item.isCompleted = ! item.isCompleted;
                  setState(() {
                    todoList[indexOfObject] = item;
                  });


                },
              ),
              title: Text("${todoList[index].task}",
              style: TextStyle(
                decoration: todoList[index].isCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none),

            ),
              trailing: IconButton(
                  onPressed: () {
                    deleteTodoItem(index);

                  },
              icon: Icon(Icons.delete,color: Colors.red,),
              )
            ); // list tile
          },
//          child: TextField(
//            controller: controller,
//            decoration: InputDecoration(labelText: "Write something here! "),
//          ), // TextField

        ),// container
      ); //scaffold

    }
  }

