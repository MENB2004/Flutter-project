import 'package:flutter/material.dart';
import 'package:visitor_app/pages/adminlogin.dart';
import 'package:visitor_app/pages/securitylogin.dart';

class Operation extends StatelessWidget {
  const Operation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.fSah435QKdUfzvS4_sX4dAHaHa?rs=1&pid=ImgDetMain"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Security()),
                );
              },
              child: Text("Security Login"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Admin()),
                );
              },
              child: Text("Admin Login"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
