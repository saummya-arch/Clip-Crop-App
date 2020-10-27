import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyHomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
              new ClipPath(
                 child: new Image.network("https://images.pexels.com/photos/797643/pexels-photo-797643.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                 clipper: new MyClipper(),
               )],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {

  @override 
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}