import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawerMenu(),
    debugShowCheckedModeBanner: false,
  ));
}

class drawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DrawerMenu example'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.redAccent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAdLtPVZtbR1oUC8DdcUEmTDqqWIYNsv_Bhg&usqp=CAU"),
                        fit: BoxFit.fill)),
                accountName: Text('Hisham'),
                accountEmail: Text('hishamkool@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("current profile hisham");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://xyzshayari.com/wp-content/uploads/2022/05/cute-girl-dp-1024x1024.png',
                    ),
                  )
                ],
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
