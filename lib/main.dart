import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.lime,
        brightness: Brightness.dark
      ),
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(image: AssetImage("images/bongocat.jpg")),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 16.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/me.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Badejo Adesire", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white
                      ),),
                      Text("desilere@gmail.com",  style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Hello there"),
                  onTap: (){
                    print("TAP TAP");
                  },
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("fab");
        },
      ),
      body: Column(
        children: <Widget>[
          Text("Body", textDirection: TextDirection.ltr,)
        ],
      ),
    );
  }
}



