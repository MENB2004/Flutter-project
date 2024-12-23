import 'package:flutter/material.dart';
import 'package:visitor_app/pages/addvisitor.dart';
import 'package:visitor_app/pages/viewall.dart';


class SMenuSystem extends StatefulWidget {
  const SMenuSystem({super.key});

  @override
  State<SMenuSystem> createState() => _MenuSystemState();
}

class _MenuSystemState extends State<SMenuSystem> {
  final List<Widget> pages = [SPLogin(), SViewall()];
  int currentIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visitor App"),
        leading: GestureDetector(
          onTap: () {
            print("Logo Clicked");
          },
          child: Icon(Icons.account_box),
        ),
      ),
      body: pages[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexValue,
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Add Visitor"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_comfortable_rounded),
              label: "View All Visitor")
        ],
      ),
    );
  }
}
