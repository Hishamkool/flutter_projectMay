import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may_1/NewsApp/newhourPopularNews.dart';
import 'package:flutter_may_1/NewsApp/newshourCategories.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: NewshourHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewshourHome extends StatefulWidget {
  @override
  State<NewshourHome> createState() => _NewshourHomeState();
}

class _NewshourHomeState extends State<NewshourHome> {
  bool? notifyCheck = false;

  String? selectedValue;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              // expandedHeight: 140,
              title: RichText(
                text: TextSpan(
                  text: 'News ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Hour',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange)),
                    TextSpan(
                        text: ' - Admin',
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings_outlined),
                  color: Colors.black,
                )
              ],
              //TabBar
              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,

                // controller: TabController(length: 3, vsync: null ),
                tabs: [
                  Tab(
                    text: 'Categories',
                  ),
                  Tab(
                    text: 'Upload Item',
                  ),
                  Tab(
                    text: 'Popular News',
                  ),
                ],
                onTap: (index) {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewsHourCategoriesPage(),
                      ));
                      break;
                    case 2:
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewsHourPopularNews(),
                      ));
                  }
                },
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Container(
                    height: 500,
                    child: TabBarView(
                      children: [
                        // Center(child: Text('DataSet')),
                        // first tabview
                        Center(child: Text('DataSet')),
                        Container(
                          //dropDown
                          child: Column(
                            children: [
                              // drop down buttom
                              DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    hint: const Row(
                                      children: [
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Select Category',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    items: items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ))
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                    buttonStyleData: ButtonStyleData(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      padding: const EdgeInsets.only(
                                          left: 14, right: 14),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                          color: Colors.black26,
                                        ),
                                        color: Colors.white,
                                      ),
                                      elevation: 2,
                                    ),
                                    iconStyleData: const IconStyleData(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black54,
                                      ),
                                      iconSize: 14,
                                      iconEnabledColor: Colors.yellow,
                                      iconDisabledColor: Colors.grey,
                                    ),
                                    dropdownStyleData: DropdownStyleData(
                                      maxHeight: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: Colors.redAccent,
                                      ),
                                      offset: const Offset(-20, 0),
                                      scrollbarTheme: ScrollbarThemeData(
                                        radius: const Radius.circular(40),
                                        thickness:
                                            MaterialStateProperty.all<double>(
                                                6),
                                        thumbVisibility:
                                            MaterialStateProperty.all<bool>(
                                                true),
                                      ),
                                    ),
                                    menuItemStyleData: const MenuItemStyleData(
                                      height: 40,
                                      padding:
                                          EdgeInsets.only(left: 14, right: 14),
                                    ),
                                  ),
                                ),
                              ),
                              //textfields
                              Container(
                                margin: EdgeInsets.only(
                                    top: 15, left: 8, right: 8, bottom: 8),
                                padding: EdgeInsets.only(left: 15, right: 15),
                                //textfield container
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'custom',
                                  ),
                                ),
                              ),
                              Container(
                                //textfields
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.only(left: 15, right: 15),
                                //textfield container
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'title',
                                  ),
                                ),
                              ),
                              Container(
                                //textfields
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 10, bottom: 45),
                                //textfield container
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Description',
                                  ),
                                ),
                              ),

                              //check boxes
                              Container(
                                margin: EdgeInsets.only(top: 35),
                                padding:
                                    EdgeInsets.only(left: 15.0, right: 15.0),
                                // CapitialRow
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Checkbox(
                                                value: notifyCheck,
                                                onChanged: (newvalue) {
                                                  setState(() {
                                                    notifyCheck = newvalue;
                                                  });
                                                }),
                                            Text('Notify to all users ')
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon:
                                                    Icon(Icons.remove_red_eye)),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text('Preview'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange[600],
                                      minimumSize: Size(100, 60),
                                      maximumSize: Size(200, 90)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.save),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Save Data'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //second tabview
                        Center(child: Text('DataSet')), //third Tabview
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
