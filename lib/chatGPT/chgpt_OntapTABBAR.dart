import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TabBarPage(),
  ));
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar with Navigation'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
            onTap: (index) {
              // Handle navigation when a tab is tapped
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tab1Screen(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tab2Screen(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tab3Screen(),
                    ),
                  );
                  break;
              }
            },
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1 Content')),
            Center(child: Text('Tab 2 Content')),
            Center(child: Text('Tab 3 Content')),
          ],
        ),
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab 1 Screen')),
      body: Center(child: Text('Tab 1 Screen Content')),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab 2 Screen')),
      body: Center(child: Text('Tab 2 Screen Content')),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab 3 Screen')),
      body: Center(child: Text('Tab 3 Screen Content')),
    );
  }
}
