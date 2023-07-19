import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profileUI(),
    debugShowCheckedModeBanner: false,
  ));
}



class profileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.grey[50],
        // child: SliverAppBar(
        //   expandedHeight: 100, //change later
        //   leading: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.arrow_left),
        //   ),
        //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        // ),

        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_left,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 200,
                width: 200,
                decoration: BoxDecoration(

                  image: DecorationImage(
                      image: AssetImage('assets/profile/hisham.jpg'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.3,right: MediaQuery.of(context).size.width*0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(EvaIcons.facebook),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(EvaIcons.google),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(EvaIcons.twitter),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.linkedin,
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 20),
            Center(
              child: ListTile(
                title: Center(
                    child: Text(
                  'Hisham',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                subtitle: Center(
                    child: Text(
                  'Flutter developer',
                  style: TextStyle(fontSize: 15),
                )),
              ),
            ),

            //
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(40),
              child: Center(
                  child: Text(
                'Mobile App Developer and Open Source Enthusiastic',
                style: TextStyle(fontSize: 20),textAlign: TextAlign.center,
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 35),
              // height: 100,
              height: MediaQuery.of(context).size.height *0.4,
              width: MediaQuery.of(context).size.width *0.4,
              child: SingleChildScrollView(
                child: Container(
                  // margin: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      scrollContainer(
                        leadingIcon: Icons.privacy_tip,
                        listTitle: 'Privacy',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.history,
                        listTitle: 'Purchase history',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.help,
                        listTitle: 'Help and support',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.settings,
                        listTitle: 'Settings',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.person_add,
                        listTitle: 'Invite a friend',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: EvaIcons.logOut,
                        listTitle: 'Logout',
                      ),
                      // SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class scrollContainer extends StatelessWidget {
  final IconData? leadingIcon;
  final String listTitle;


  scrollContainer({Key? key,  required this.leadingIcon, required this.listTitle}):super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: Icon(leadingIcon,color: Colors.black,) ,
        title: Text(listTitle,style: TextStyle(fontSize:16,fontWeight: FontWeight.w300 ),),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
      ),
    );
  }
}