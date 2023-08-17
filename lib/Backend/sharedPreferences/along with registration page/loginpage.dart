import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may_1/Backend/sharedPreferences/along%20with%20registration%20page/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../listview.dart';
import 'loggedinPage.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool passview = false;
  final formkey = GlobalKey<FormState>();
  TextEditingController controllerUserName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  late SharedPreferences prefs;
  late bool newUsr;
  late bool loggedIn;

  @override
  void initState() {
    check_if_new_user();
    super.initState();
  }

  void check_if_new_user() async {
    prefs = await SharedPreferences.getInstance()!;
    loggedIn = prefs.getBool('loggedin') ?? false;
    if (loggedIn == false) {
      setState(() {
        controllerUserName.clear();
        controllerPassword.clear();
      });

      prefs = await SharedPreferences.getInstance()!;
      newUsr = prefs.getBool('prefs.newUsr') ?? true;
      if (newUsr == false) {
        setDataInTextField();
      }else if (newUsr ==true){
        setState(() {

          controllerUserName.clear();
          controllerPassword.clear();
        });
      }
    } else if (loggedIn == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const loggedinPage()));
    }
  }

  // void check_if_new_user() async {
  //   //conditions using if statements(LOGIC)  didnot work
  //   prefs = await SharedPreferences.getInstance();
  //   bool loggedIn = prefs.getBool('loggedin') ?? false;
  //   bool newUsr = prefs.getBool('newUser') ?? true;
  //
  //   if (loggedIn == true && newUsr == false) {
  //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const loggedinPage()));
  //   } else if (loggedIn == false) {
  //      if (newUsr == false) {
  //       setDataInTextField();
  //     }
  //   }
  // }


  void setDataInTextField() async {
    prefs = await SharedPreferences.getInstance()!;
    String setUserName = prefs.getString('prefs.useName') ?? '';
    controllerUserName.text = setUserName;
    String setPassWord = prefs.getString('prefs.userPassword') ?? '';
    controllerPassword.text = setPassWord;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignIn",
          style:
              GoogleFonts.sacramento(textStyle: const TextStyle(fontSize: 30)),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Form(
          // while using form use form elements , i.e., use textformfield instead of text form
          key: formkey, // this  key is used to identify the changes in the widget
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 50,
                        fontFamily: 'Satisfy'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 100, right: 100),
                child: TextFormField(
                  controller: controllerUserName,

                  //change textfield to textformfield  while using validator for forms
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "username",
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (usr_name) {
                    if (usr_name == null || usr_name.isEmpty) {
                      return 'This field is required';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 100, right: 100, bottom: 15),
                child: TextFormField(
                  controller: controllerPassword,

                  obscureText: !passview,
                  // password will be hidden only if obscure text is true, here passview is set as false at the beggining that means we need not passview to make the password hidden
                  // obscuringCharacter: '#',
                  textInputAction: TextInputAction.done,
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 8) {
                      return ' password is less than 8 digit ,not valid';
                    } else {
                      return null;
                    }
                  },

                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      // suffixIcon: Icon(Icons.visibility_off),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passview == false) {
                              passview = true;
                            } else {
                              passview = false;
                            }
                          });
                        },
                        icon: Icon(passview == true
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      labelText: "password",
                      hintText: "Password ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.deepPurple)),
                      onPressed: () {
                        final checkfield = formkey.currentState!.validate();
                        if (checkfield) {
                          pushUserName();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => listpage()));
                        } else {
                          return null;
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text("not a user? signup"))
            ],
          ),
        ),
      ),
    );
  }

  void pushUserName() async {
    prefs = await SharedPreferences.getInstance()!;
    prefs.setString('prefs.userNNN', controllerUserName.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loggedinPage()));
  }
}
