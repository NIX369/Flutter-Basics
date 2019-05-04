import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
      title: "Flutter",
        home: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text("My header"),
          ),
          body: Center(
            child: Text("Welcome to Flutter",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),

        ),
      ));