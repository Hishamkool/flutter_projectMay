import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginUsingSharedPreference.dart';

void main() {
  runApp(MaterialApp(
    home: sharedPreferenceLoggedIn(),
    debugShowCheckedModeBanner: false,
  ));
}

class sharedPreferenceLoggedIn extends StatefulWidget {
  const sharedPreferenceLoggedIn({super.key});

  @override
  State<sharedPreferenceLoggedIn> createState() =>
      _sharedPreferenceLoggedInState();
}

class _sharedPreferenceLoggedInState extends State<sharedPreferenceLoggedIn> {
  late SharedPreferences shpreferences;
  late String loggedInUser;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  void fetchdata() async {
    shpreferences = await SharedPreferences.getInstance();
    setState(() {
      loggedInUser = shpreferences.getString('usRname')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shared home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcom $loggedInUser"),
            ElevatedButton(
                onPressed: () {
                  shpreferences.setBool('newUser', true);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => sharedpreferenceLoginPage()));
                },
                child: Text('logOut'))
          ],
        ),
      ),
    );
  }
}
