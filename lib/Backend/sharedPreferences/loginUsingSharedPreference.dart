import 'package:flutter/material.dart';
import 'package:flutter_may_1/Backend/sharedPreferences/sharedHome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: sharedpreferenceLoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class sharedpreferenceLoginPage extends StatefulWidget {
  const sharedpreferenceLoginPage({super.key});

  @override
  State<sharedpreferenceLoginPage> createState() =>
      _sharedpreferenceLoginPageState();
}

class _sharedpreferenceLoginPageState extends State<sharedpreferenceLoginPage> {
  final userNAME_controller = TextEditingController();
  final passWord_controller = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_already_loggedIn();
    super.initState();
  }

  void check_if_already_loggedIn() async {
    preferences = await SharedPreferences.getInstance()!;
    newuser = preferences.getBool('newUser') ??
        true; // if the newuser has null value it assigns a true value to the variable and if it has a value then its set to false and the logedin page is loaded
    if (newuser == false) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => sharedPreferenceLoggedIn(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared preference Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: userNAME_controller,
                decoration: InputDecoration(
                    hintText: 'UserName', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passWord_controller,
                decoration: InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance()!;
                  String getUsername = userNAME_controller.text;
                  String getPassword = passWord_controller.text;

                  if (getUsername != '' && getPassword != '') {
                    preferences.setString('usRname', getUsername);
                    preferences.setBool('newUser', false);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => sharedPreferenceLoggedIn(),
                    ));
                  }
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
