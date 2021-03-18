import 'package:flutter/material.dart';
import 'package:login_page_design/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Icon(Icons.queue_play_next),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Container(
          child: new Center(
            child: Column(
              children: [
                new Text("Login", style: new TextStyle(color: Colors.blue,fontSize: 30.0),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Icon(Icons.email),
                      ),
                      Expanded(child: new TextField(decoration: new InputDecoration(hintText: "Enter email..",),),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Icon(Icons.enhanced_encryption),
                      ),
                     Expanded(child:  new TextField(decoration: new InputDecoration(hintText: "Enter Password..",),),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HomePage()));
                    },
                    child: new Text("LogIn"),
                    color: Colors.blue,

                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}

