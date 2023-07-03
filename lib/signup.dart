import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may_1/loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confPass = TextEditingController();
  bool passhidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 60),
              child: Text("SignUp..",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email ID",
                    hintText: "example@gmail.com",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                textInputAction: TextInputAction.next,
                validator: (email) {
                  if (email!.isEmpty) {
                    return 'This field is required';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "........",
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                textInputAction: TextInputAction.next,
                controller: pass,
                validator: (passw) {
                  if (passw!.isEmpty || passw.length < 8) {
                    return 'Password should be at least 8 letters and not null';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Confirm password",
                    hintText: "........",
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                textInputAction: TextInputAction.next,
                controller: confPass,
                validator: (passcheck) {
                  if (passcheck == null) {
                    return 'Null';
                  }
                  if (passcheck != pass.text) {
                    return 'Dosent Match';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    final checkthevalues = formkey.currentState!.validate();
                    if (checkthevalues) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginpage()));
                    } else {
                      return null;
                    }
                  },
                  child: Text("Create account")),
            )
          ],
        ),
      ),
    );
  }
}
