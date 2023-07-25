import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: chgptNewshourHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class chgptNewshourHome extends StatefulWidget {
  @override
  State<chgptNewshourHome> createState() => _chgptNewshourHome();
}

class _chgptNewshourHome extends State<chgptNewshourHome> {
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
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Hour',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    TextSpan(
                      text: ' - Admin',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
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
                    text: 'Data Stat',
                  ),
                  Tab(
                    text: 'Upload Item',
                  ),
                  Tab(
                    text: 'All Data',
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  TabBarView(
                    children: [
                      Center(child: Text('DataSet')), //first tabview
                      Container(
                        //dropDown
                        child: Column(
                          children: [
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
                                          MaterialStateProperty.all<double>(6),
                                      thumbVisibility:
                                          MaterialStateProperty.all<bool>(true),
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
                          ],
                        ),
                      ), //second tabview
                      Center(child: Text('DataSet')), //third Tabview
                    ],
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
