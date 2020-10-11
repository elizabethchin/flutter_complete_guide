import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()); //pass core widget to runApp need () or else it would be a type
}

class MyApp extends StatelessWidget {
  @override //code below overrides StatelessWidget's build method, this is cleaner
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App") ,),
        body: Text("This is my default text!"),
      ),
    ); 
  }
}
 