import 'package:flutter/material.dart';
import 'profileScrn.dart';
import 'addScrn.dart';
import 'discoveredScrn.dart';
import 'notificationScrn.dart';

void main() {
  runApp(MaterialApp(
      home: indexDesign()
  )
  );
}

class indexDesign extends StatefulWidget {
  const indexDesign({Key? key}) : super(key: key);

  @override
  State<indexDesign> createState() => _indexDesignState();
}

TextEditingController myController2 = TextEditingController();

class _indexDesignState extends State<indexDesign> {
  int _selectIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w500);
  static const List<Widget> _widgetOption = <Widget>[
    Text("Search", style: optionStyle),
    Text("Profile", style: optionStyle),
    Text("Add", style: optionStyle),
    Text("Discovered", style: optionStyle),
    Text("Notification", style: optionStyle),
  ];

  static const List<Widget> _screenOption = <Widget>[
    Designindex(),
    Profilescreen(),
    Addscreen(),
    Discoveredscreen(),
    Notificationscreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 33,
          backgroundColor: Colors.green.shade300,
          title: Center(child: _widgetOption.elementAt(_selectIndex)),
        ),
        body: _screenOption.elementAt(_selectIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: _selectIndex,
          items: const [
            BottomNavigationBarItem(
                // activeIcon: ,
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.white10),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded),
                label: 'Profile',
                backgroundColor: Colors.white10),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
                backgroundColor: Colors.white10),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/foursquareicon.png'),
                  size: 30,
                ),
                label: 'Dicovered',
                backgroundColor: Colors.white10),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active),
                label: 'Notification',
                backgroundColor: Colors.white10),
          ],
        ),
      ),
    );
  }
}

List chipData = ['Guidance', 'Family', 'Joy', 'Tree', 'sun'];

class Designindex extends StatelessWidget {
  const Designindex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          // image: AssetImage('assets/img1.jpg'), fit: BoxFit.cover),
                          image: AssetImage('assets/img4.jpeg'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  // padding: const EdgeInsets.fromLTRB(15,50,15,0),
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 25),
                      right: (MediaQuery.of(context).size.width / 25),
                      top: (MediaQuery.of(context).size.height / 30)),

                  child: TextField(
                    style: TextStyle(fontSize: 17, color: Colors.black),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green.shade100, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green.shade500, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Colors.white60,
                      filled: true,
                      hintText: 'Search ',
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 22),
                      suffixIcon: IconButton(
                        iconSize: 30,
                        icon: ImageIcon(
                          AssetImage('assets/filter_sorticon.png'),
                          size: 42,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),

                      //  IntrinsicHeight(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       VerticalDivider(
                      //         color: Colors.grey[800],
                      //         indent: 1,
                      //         endIndent: 1,
                      //         thickness: 1,
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ]),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 10, 0),
                    child: SizedBox(
                      width: size.width / 2.3,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              primary: Colors.white70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Volunteering",
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 17),
                              ),
                              CircleAvatar(
                                child: Text(
                                  "36",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                backgroundColor: Colors.blueGrey,
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 3, 0, 0),
                    child: SizedBox(
                      width: size.width / 2.3,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              primary: Colors.white70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Neighborly help",
                                style: TextStyle(
                                    color: Colors.green[700], fontSize: 17),
                              ),
                              CircleAvatar(
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                backgroundColor: Colors.green[700],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Container(
                  width: size.width,
                  height: size.height / 1.25,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Card(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 90),
                          child: Container(
                            height: size.height * 0.30,
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage('assets/img5.jpg'),
                                    fit: BoxFit.cover),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blueAccent,
                                    Colors.green,
                                  ],
                                )),
                            // color: Colors.red[300],

                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5)),
                                    height: size.height * 0.03,
                                    width: size.width * 0.28,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        "Voluntreering",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                12),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.white,
                                              Colors.green.shade100,
                                            ],
                                          )),
                                      width: size.width,
                                      height: size.height * 0.23,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "A003 Enthusiastic Volunteers \n OverKop",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blueGrey[800]),
                                            ),
                                            Text(
                                              "Schilde vrijwilligers, Schilde",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              " 2 hours per week",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.blueGrey[800]),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.075,
                                              // width: 40ss0,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount: chipData.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 10, 10, 10),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        // height:
                                                        // size.height * 0.05,
                                                        //width: size.width * 0.25,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(2),
                                                          child: Card(
                                                            elevation: 5,
                                                            // margin: EdgeInsets.all(5),
                                                            color: Colors
                                                                .green[100],
                                                            shadowColor:
                                                                Colors.black87,
                                                            child: Text(
                                                              chipData[index],
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  )
                                                  // Row(
                                                  //   mainAxisAlignment:
                                                  //       MainAxisAlignment
                                                  //           .spaceBetween,
                                                  //   children: [
                                                  //     Container(
                                                  //       decoration: BoxDecoration(
                                                  //           borderRadius:
                                                  //               BorderRadius
                                                  //                   .circular(5)),
                                                  //       height:
                                                  //           size.height * 0.05,
                                                  //       width: size.width * 0.25,
                                                  //       child: Padding(
                                                  //         padding:
                                                  //             EdgeInsets.all(2),
                                                  //         child: Card(
                                                  //           elevation: 5,
                                                  //           // margin: EdgeInsets.all(5),
                                                  //           color:
                                                  //               Colors.green[100],
                                                  //           shadowColor:
                                                  //               Colors.black87,
                                                  //           child: Text(
                                                  //             "Guidence",
                                                  //             style: TextStyle(
                                                  //                 fontSize: 20,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w500),
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //     Container(
                                                  //       decoration: BoxDecoration(
                                                  //           borderRadius:
                                                  //               BorderRadius
                                                  //                   .circular(5)),
                                                  //       height:
                                                  //           size.height * 0.05,
                                                  //       width: size.width * 0.18,
                                                  //       child: Padding(
                                                  //         padding:
                                                  //             EdgeInsets.all(2),
                                                  //         child: Card(
                                                  //           elevation: 5,
                                                  //           // margin: EdgeInsets.all(5),
                                                  //           color:
                                                  //               Colors.green[100],
                                                  //           shadowColor:
                                                  //               Colors.black87,
                                                  //           child: Text(
                                                  //             "Youth",
                                                  //             style: TextStyle(
                                                  //                 fontSize: 20,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w500),
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //     Container(
                                                  //       decoration: BoxDecoration(
                                                  //           borderRadius:
                                                  //               BorderRadius
                                                  //                   .circular(5)),
                                                  //       height:
                                                  //           size.height * 0.05,
                                                  //       width: size.width * 0.18,
                                                  //       child: Padding(
                                                  //         padding:
                                                  //             EdgeInsets.all(2),
                                                  //         child: Card(
                                                  //           elevation: 5,
                                                  //           // margin: EdgeInsets.all(5),
                                                  //           color:
                                                  //               Colors.green[100],
                                                  //           shadowColor:
                                                  //               Colors.black87,
                                                  //           child: Text(
                                                  //             "Music",
                                                  //             style: TextStyle(
                                                  //                 fontSize: 20,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w500),
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //
                                                  //     // Chip(
                                                  //     //   elevation: 5,
                                                  //     //   padding:
                                                  //     //       EdgeInsets.all(5),
                                                  //     //   backgroundColor: Colors
                                                  //     //       .greenAccent[100],
                                                  //     //   shadowColor:
                                                  //     //       Colors.black,
                                                  //     //   label: Text(
                                                  //     //     'Guidence',
                                                  //     //     style: TextStyle(
                                                  //     //         fontSize: 20),
                                                  //     //   ), //Text
                                                  //     // ),
                                                  //     // Chip(
                                                  //     //   elevation: 5,
                                                  //     //   padding:
                                                  //     //       EdgeInsets.all(5),
                                                  //     //   backgroundColor: Colors
                                                  //     //       .greenAccent[100],
                                                  //     //   shadowColor:
                                                  //     //       Colors.black,
                                                  //     //   label: Text(
                                                  //     //     'Youth',
                                                  //     //     style: TextStyle(
                                                  //     //         fontSize: 20),
                                                  //     //   ), //Text
                                                  //     // ),
                                                  //   ],
                                                  // ),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Center(child: _widgetOption.elementAt(_selectIndex)),
              // _screenOption.elementAt(_selectIndex),
            ],
          ),
          // TextFieldSearch(label: 'Search', controller: myController2,

          // ),
        ),
      ),
    );
  }
}
