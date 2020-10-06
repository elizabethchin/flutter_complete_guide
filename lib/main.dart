import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()); //pass core widget to runApp need () or else it would be a type
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'),); 
  }
}
