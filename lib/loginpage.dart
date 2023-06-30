import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));
}

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Login Page",
                style: TextStyle(color: Colors.orange, fontSize: 50),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 100, right: 100),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "username",
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 100, right: 100),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "password",
                  hintText: "Password ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )
            ),
          ),
          TextButton(onPressed: () {}, child: Text("not a user? signup"))
        ],
      ),
    );
  }
}
