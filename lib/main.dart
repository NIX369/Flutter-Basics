import 'package:flutter/material.dart';

    void main() {
      runApp(MaterialApp(title: "my new app",home: HomeWidget()));

}
      class HomeWidget extends StatelessWidget{
        @override
      Widget build(BuildContext context){
          return Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
      title: Text("My header"),
      ),
      body:ListView.builder(itemCount:20,itemBuilder:(context,index){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(backgroundColor: Colors.blue,
          child: Text("$index"),
        ),
        Text("User Name"),
        Text("2:00")



        ],);
      })
          );
      }
    }

