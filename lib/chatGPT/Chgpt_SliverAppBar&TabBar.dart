import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarWithSliverAppBar(),
    );
  }
}

class TabBarWithSliverAppBar extends StatefulWidget {
  @override
  _TabBarWithSliverAppBarState createState() => _TabBarWithSliverAppBarState();
}

class _TabBarWithSliverAppBarState extends State<TabBarWithSliverAppBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://via.placeholder.com/400x200',
                  fit: BoxFit.cover,
                ),
              ),
              floating: true,
              pinned: true,
              snap: false,
              title: Text('SliverAppBar with TabBar'),
              bottom: TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(child: Text('Tab 1 Content')),
            Center(child: Text('Tab 2 Content')),
            Center(child: Text('Tab 3 Content')),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
