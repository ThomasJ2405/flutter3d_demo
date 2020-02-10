import 'package:flutter/material.dart';
import 'package:flutter3d_demo/object3d.dart';

void main() => runApp(MyApp());

/*
 * Nice example of rendering a 3d object with Flutter
 * example taken from https://levelup.gitconnected.com/a-simple-3d-engine-in-flutter-cc4a7edc943e
 * Github: https://github.com/RichardCubed/flutter_demo_3d
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Technical'),
      debugShowCheckedModeBanner: false,
      title: 'Object Viewer',
      home: Scaffold(
          appBar: new AppBar(
          elevation: 4,
          backgroundColor: Colors.green,
          title: Text("Thomas Flutter 3D Demo"),
        ),
        backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        body: Column(
          children: [
            Object3D(
              size: Size(400.0, 400.0),
              zoom: 30.0,
              path: "assets/brain.obj",
            ),
            // RaisedButton(
            //   onPressed: () {  },
            //   child: Text('Dies ist ein Testbutton'),
            // ),
          ],
        ),
      ),
    );
  }
}