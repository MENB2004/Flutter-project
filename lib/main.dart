import 'package:flutter/material.dart';
import 'package:visitor_app/pages/menu.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Center(child: Text("Visitor App SBCE")),
          backgroundColor: Colors.blue,
        ),
        body: Operation(),
      ),
    );
  }
}