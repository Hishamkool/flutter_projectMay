import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: loggedinPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class loggedinPage extends StatefulWidget {
  const loggedinPage({super.key});

  @override
  State<loggedinPage> createState() => _loggedinPageState();
}

class _loggedinPageState extends State<loggedinPage> {
  late SharedPreferences prefs;
  String? recivedUserName;

  @override
  void initState() {
    getUsername();
    super.initState();
  }

  void getUsername() async {
    prefs = await SharedPreferences.getInstance()!;
    setState(() {
      recivedUserName = prefs.getString('prefs.userNNN')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Welcome $recivedUserName"),
              ),
              SizedBox(
                height: 15,

              ),
              ElevatedButton(onPressed: () async{
                prefs = await SharedPreferences.getInstance()!;
                prefs.setBool('loggedin', false);
                prefs.setBool('newUsr', true);
                prefs.setString('null', ' ');
                // logSharedPreferences();
                prefs.remove('prefs.userNNN');
                prefs.remove('prefs.userPassword');
                prefs.remove('prefs.userEmail');
                prefs.remove('prefs.useName');


                Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginpage(),));
              }, child: Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }


  // _______ to check the values in the shared preferences
  // void logSharedPreferences() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Map<String, dynamic> allPrefs = prefs.getKeys().fold({}, (previous, key) {
  //     previous[key] = prefs.get(key);
  //     return previous;
  //   });
  //
  //   print("All SharedPreferences values: $allPrefs");
  // }

}
