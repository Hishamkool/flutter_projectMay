import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: newshour(),
  ));
}

class newshour extends StatefulWidget {
  @override
  State<newshour> createState() => _newshourState();
}

class _newshourState extends State<newshour> {
  bool agree = false;
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
  String? selectedValue;

  // List of items in our dropdown menu

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Hour",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "-Admin",
                style: TextStyle(color: Colors.black, fontSize: 19),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                ))
          ],
          bottom: TabBar(
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.purple,
            tabs: [
              Tab(
                text: "Data Stat",
              ),
              Tab(
                text: "Upload item",
              ),
              Tab(
                text: "All Data",
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 40,
                width: 400,
                child: DropdownButtonHideUnderline(
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
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
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
                      width: 160,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.white60,
                        ),
                        color: Colors.white70,
                      ),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      iconSize: 20,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white60,
                      ),
                      offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black)),
                height: 40,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.close),
                        hintText: "Covers Pictures Uri"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black)),
                height: 40,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.close),
                        hintText: "Title"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black)),
                height: 80,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Description',
                        hintText: "Description"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Material(
                        child: Checkbox(
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                      const Text(
                        'Notify to All Users',
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140, right: 10),
                        child: Icon(
                          (Icons.remove_red_eye),
                          color: Colors.blue,
                        ),
                      ),
                      Text("Preview")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.orange,
                width: 380,
                child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 110, right: 10),
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Save Data",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
