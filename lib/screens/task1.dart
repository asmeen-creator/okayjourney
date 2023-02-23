import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:okayjourney/constants/fonts.dart';
import 'package:okayjourney/widgets/button_widget.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //table data//

    //header
    TableRow tableheader = const TableRow(children: [
      Text(
        'S.N',
        style: TextStyle(fontFamily: bold, fontSize: 13),
      ),
      Text('Name',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: bold, fontSize: 13)),
      Text('Address',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: bold,
            fontSize: 13,
          )),
      Text('Working Status',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: bold,
            fontSize: 13,
          ))
    ]);

    // tabledata
    TableRow tabledata1 = TableRow(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('1', style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal Tube Well",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: const Text(
            "Not Operating",
            style: TextStyle(
              fontFamily: regular,
              fontSize: 12,
            ),
          ),
        ),
      )
    ]);
    TableRow tabledata2 = TableRow(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('2', style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal Tube Well",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: const Text(
            "Operating",
            style: TextStyle(
              fontFamily: regular,
              fontSize: 12,
            ),
          ),
        ),
      )
    ]);
    TableRow tabledata3 = TableRow(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('3', style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal Tube Well",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: const Text(
            "Operating",
            style: TextStyle(
              fontFamily: regular,
              fontSize: 12,
            ),
          ),
        ),
      )
    ]);
    TableRow tabledata4 = TableRow(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('4', style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal Tube Well",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Sinamangal",
            style: TextStyle(fontFamily: regular, fontSize: 12)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: const Text(
            "Operating",
            style: TextStyle(
              fontFamily: regular,
              fontSize: 12,
            ),
          ),
        ),
      )
    ]);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(42), topRight: Radius.circular(42)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white60,
            backgroundColor: const Color.fromARGB(255, 56, 44, 109),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            iconSize: 35,
            onTap: _onItemTapped,
            elevation: 10,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task_alt_outlined),
                label: "Tasks",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.change_circle_rounded),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ListView(
                addAutomaticKeepAlives: false,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
                    height: height * 0.15,
                    width: width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                          radius: 55.0,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Operator",
                              style:
                                  TextStyle(fontSize: 15, fontFamily: regular),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Ashmin Bhattarai",
                              style: TextStyle(fontSize: 20, fontFamily: bold),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Badge(
                          badgeStyle: BadgeStyle(
                              badgeColor: Color.fromARGB(255, 32, 11, 51)),
                          badgeContent: Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          child: Icon(Icons.notifications,
                              size: 50, color: Color.fromARGB(255, 32, 11, 51)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      "Table List",
                      style: TextStyle(fontFamily: regular, fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12)),
                      padding: const EdgeInsets.all(14),
                      width: width * 0.95,
                      child: Table(children: [
                        tableheader,
                        tabledata1,
                        tabledata2,
                        tabledata3,
                        tabledata4
                      ]),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12)),
                      padding: const EdgeInsets.all(14),
                      width: width * 0.95,
                      child: Table(children: [
                        tabledata1,
                        tabledata2,
                        tabledata3,
                        tabledata4
                      ]),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12)),
                      padding: const EdgeInsets.all(14),
                      width: width * 0.95,
                      child: Table(children: [
                        tabledata1,
                        tabledata2,
                        tabledata3,
                        tabledata4
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 200,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 56, 44, 109),
                    borderRadius: BorderRadius.circular(22)),
                child: const Text("Explore Here",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: regular,
                        fontSize: 17)),
              ),
            )
          ],
        )));
  }
}
