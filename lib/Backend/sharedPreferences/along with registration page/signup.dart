import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: signup(),
    debugShowCheckedModeBanner: false,
  ));
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  late SharedPreferences prefs;
  late bool newUser;
  final formkey = GlobalKey<FormState>();
  final TextEditingController userName = TextEditingController();
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confPass = TextEditingController();
  bool passhidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: SingleChildScrollView(
        // wraping by singlechildscroll view to avoid the overflow error while the keyboard pops up in device
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 60),
                child: Text("SignUp..",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: userName,
                  //emailid

                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "firstName LastName",
                      prefixIcon: Icon(Icons.person_2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  textInputAction: TextInputAction.next,
                  validator: (name) {
                    if (name!.isEmpty) {
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
                  controller: userEmail,
                  //emailid

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
                  controller: pass,
                  //password
                  obscureText: !passhidden,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "........",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passhidden == false) {
                              passhidden = true;
                            } else {
                              passhidden = false;
                            }
                          });
                        },
                        icon: Icon(passhidden == false
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  // textInputAction: TextInputAction.next,

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
                  // obscureText: !passhiddenconfirm,
                  obscureText: !passhidden,
                  decoration: InputDecoration(
                      labelText: "Confirm password",
                      hintText: "........",
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  textInputAction: TextInputAction.none,
                  // controller: confPass,
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
                        storeData();
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => loginpage()));
                      } else {
                        return null;
                      }
                    },
                    child: Text("Create account")),
              )
            ],
          ),
        ),
      ),
    );
  }

  void storeData() async {
    String personEmail = userEmail.text;
    String personPassoword = pass.text;
    String personName = userName.text;

    prefs = await SharedPreferences.getInstance()!;
    prefs.setString('prefs.useName', personName);
    prefs.setString('prefs.userEmail', personEmail);
    prefs.setString('prefs.userPassword', personPassoword);
    prefs.setBool('prefs.newUsr', false);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginpage()));
  }
}
