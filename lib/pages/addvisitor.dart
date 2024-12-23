import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SPLogin extends StatelessWidget {
  SPLogin({super.key});
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController purpose = TextEditingController();
  TextEditingController whomToMeet = TextEditingController();

  Future<void> sendData() async {
    final apiurl =
    Uri.parse("https://log-app-demo-api.onrender.com/addvisitor");
    try {
      final response = await http.post(
        apiurl,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "firstname": firstname.text,
          "lastname": lastname.text,
          "purpose": purpose.text,
          "whomToMeet": whomToMeet.text,
        }),
      );
      if (response.statusCode == 200) {
        print("Successfull");
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: firstname,
                decoration: InputDecoration(
                    hintText: "Firstname", border: OutlineInputBorder(),prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: lastname,
                decoration: InputDecoration(
                    hintText: "Lastname", border: OutlineInputBorder(),prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: purpose,
                decoration: InputDecoration(
                    hintText: "Purpose", border: OutlineInputBorder(),prefixIcon: Icon(Icons.supervised_user_circle_outlined)),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: whomToMeet,
                decoration: InputDecoration(
                    hintText: "Whom To Meet", border: OutlineInputBorder(),prefixIcon: Icon(Icons.person_pin)),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () async {
                      await sendData();
                    },
                    child: Text(
                      "submit",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    )),
              ),
              GestureDetector(
                  onTap: () {
                    print("Hello");
                  },
                  child: Text(""))
            ],
          ),
        ),
      ),
    );
  }
}
