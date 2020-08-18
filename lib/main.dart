import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    )
  );
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Beginner", textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.beenhere),
              onPressed: (){
            print("icon");
          }),
          IconButton(icon: Icon(Icons.map),
              onPressed: (){
            print("icon");
          }),
        ],
      ),
    );
  }
}



