

import 'package:flutter/material.dart';
import 'package:project_jee/Profilepage.dart';

class TimeTableReport extends StatelessWidget {
  const TimeTableReport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimeTablePage(),
    );
  }
}

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> with TickerProviderStateMixin {
  late TabController _tabController; 

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this); 
  }

  @override
  void dispose() {
    _tabController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            'Time Table Report',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            isScrollable: true,
                      unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                      indicatorColor: Colors.red,
            tabs: [
              Tab(child: Text('Monday'),),
                      Tab(child: Text('Tuesday'),),
                       Tab(child: Text('Wednesday'),),
                        Tab(child: Text('Thursday'),),
                         Tab(child: Text('Friday'),),
                          Tab(child: Text('Saturday'),),
          ]),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ))
          ],
        ),
        body: TabBarView(children: [
          Monday(),
          Tuesday(),
          Wednesday(),
          Thursday(),
          Friday(),
          Saturday(),
        ]),
        // body: SingleChildScrollView(
        //  //scrollDirection: Axis.horizontal,
        //   child: Container(
        //     color: Color.fromARGB(255, 241, 238, 238),
        //     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         SizedBox(
        //           height: 16,
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           mainAxisSize: MainAxisSize.min,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           verticalDirection: VerticalDirection.down,
        //           children: [
        //             Expanded(
        //               child: Container(
        //                 height: 50,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Colors.white,
        //                 ),
        //                 padding: EdgeInsets.all(16.0),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                   children: const [
        //                     Text('Copy'),
        //                     VerticalDivider(),
        //                     Text('Excel'),
        //                     VerticalDivider(),
        //                     Text('CSV'),
        //                     VerticalDivider(),
        //                     Text('PDF'),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         // SizedBox(
        //         //   height: 16,
        //         // ),
        //         // Container(
        //         //    height: 50,
        //         //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
        //         //    child: TabBar(
        //         //     controller: _tabController,
        //         //      isScrollable: true,
        //         //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
        //         //       indicatorColor: Colors.red,
        //         //     tabs: [ 
        //         //       Tab(child: Text('Monday'),),
        //         //       Tab(child: Text('Tuesday'),),
        //         //        Tab(child: Text('Wednesday'),),
        //         //         Tab(child: Text('Thursday'),),
        //         //          Tab(child: Text('Friday'),),
        //         //           Tab(child: Text('Saturday'),),
      
        //         //     ],
        //         //    )),
                   
                
        //         //   // child: SingleChildScrollView(
        //         //   //   scrollDirection: Axis.horizontal,
        //         //   //   child: Row(
                      
        //         //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         //   //     children: List.generate(tabs.length, 
        //         //   //     (index) => GestureDetector(
        //         //   //        onTap: () {
        //         //   //     setState(() {
        //         //   //       _selectedIndex = index;
        //         //   //     });
        //         //   //   },
        //         //   //   child: Container(
        //         //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        //         //   //     decoration: BoxDecoration(
        //         //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
        //         //   //        borderRadius: BorderRadius.circular(10),
        //         //   //     ),
                       
        //         //   //      child: Text( tabs[index],
        //         //   //       style: TextStyle(
        //         //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
        //         //   //         //fontWeight: FontWeight.bold,
        //         //   //       ),),
        //         //   //   ),
        //         //   //     ))
        //         //   //       // Text('Monday'),
        //         //   //       // Text('Tuesday'),
        //         //   //       // Text('Wednesday'),
        //         //   //       // Text('Thursday'),
        //         //   //       // Text('Friday'),
        //         //   //       // Text('Saturday')
                      
        //         //   //   ),
        //         //   // ),
        //         // ),
        //         // Expanded(child: TabBarView(
        //         //   controller: _tabController,
        //         //   children: [
        //         //     Monday()
        //         //   //   Container(
        //         //   //   child: Center(
        //         //   //     Monday(),
        //         //   //   ),
        //         //   // ), 
        //         //   //  Container(
        //         //   //   child: Center(
        //         //   //      Tuesday(),
        //         //   //   ),
        //         //   // ), 
        //         //   // Container(
        //         //   //   child: Center(
        //         //   //     Wednesday(),
        //         //   //   ),
        //         //   // ),
        //         //   // Container(
        //         //   //   child: Center(
        //         //   //     Thursday(),
        //         //   //   ),
        //         //   // ),
        //         //   // Container(
        //         //   //   child: Center(
        //         //   //      Friday(),
        //         //   //   ),
        //         //   // ),
        //         //   // Container(
        //         //   //   child: Center(
        //         //   //      Saturday()
        //         //   //   ),
        //         //   // ),
              
                 
        //         // ],)),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Container(
        //           height: 190,
        //           decoration: BoxDecoration(
        //               color: Color.fromARGB(255, 84, 80, 80),
        //               borderRadius: BorderRadius.circular(10)),
        //           padding: EdgeInsets.all(20),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.white,
        //                     borderRadius: BorderRadius.circular(10)),
        //                 padding: EdgeInsets.all(20),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Period'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           '6',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 120,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Subject'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           'Physics',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 120,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Teacher'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           'Anil V K',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 20),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     'Room ',
        //                     style: TextStyle(color: Colors.white, fontSize: 15),
        //                   ),
        //                   Text(
        //                     'Room1 ',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.bold),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Container(
        //           height: 190,
        //           decoration: BoxDecoration(
        //               color: Color.fromARGB(255, 84, 80, 80),
        //               borderRadius: BorderRadius.circular(10)),
        //           padding: EdgeInsets.all(20),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.white,
        //                     borderRadius: BorderRadius.circular(10)),
        //                 padding: EdgeInsets.all(20),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Period'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           '2',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 100,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Subject'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           'Mathematics',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 80,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Teacher'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           'Muhammed P K',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 20),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     'Room ',
        //                     style: TextStyle(color: Colors.white, fontSize: 15),
        //                   ),
        //                   Text(
        //                     'Room1 ',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.bold),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Container(
        //           height: 190,
        //           decoration: BoxDecoration(
        //               color: Color.fromARGB(255, 84, 80, 80),
        //               borderRadius: BorderRadius.circular(10)),
        //           padding: EdgeInsets.all(20),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.white,
        //                     borderRadius: BorderRadius.circular(10)),
        //                 padding: EdgeInsets.all(20),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Period'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           '1',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 100,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Subject'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           'Mathematics',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 80,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Text('Teacher'),
        //                         SizedBox(height: 4),
        //                         Text(
        //                           ' K Sarath',
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               color: const Color.fromARGB(255, 82, 79, 79)),
        //                         )
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               SizedBox(height: 20),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     'Room ',
        //                     style: TextStyle(color: Colors.white, fontSize: 15),
        //                   ),
        //                   Text(
        //                     'Room1 ',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.bold),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
class Monday extends StatelessWidget {
  const Monday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //    height: 50,
                //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
                //    child: TabBar(
                //     controller: _tabController,
                //      isScrollable: true,
                //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                //       indicatorColor: Colors.red,
                //     tabs: [ 
                //       Tab(child: Text('Monday'),),
                //       Tab(child: Text('Tuesday'),),
                //        Tab(child: Text('Wednesday'),),
                //         Tab(child: Text('Thursday'),),
                //          Tab(child: Text('Friday'),),
                //           Tab(child: Text('Saturday'),),
      
                //     ],
                //    )),
                   
                
                //   // child: SingleChildScrollView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   child: Row(
                      
                //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   //     children: List.generate(tabs.length, 
                //   //     (index) => GestureDetector(
                //   //        onTap: () {
                //   //     setState(() {
                //   //       _selectedIndex = index;
                //   //     });
                //   //   },
                //   //   child: Container(
                //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                //   //     decoration: BoxDecoration(
                //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
                //   //        borderRadius: BorderRadius.circular(10),
                //   //     ),
                       
                //   //      child: Text( tabs[index],
                //   //       style: TextStyle(
                //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
                //   //         //fontWeight: FontWeight.bold,
                //   //       ),),
                //   //   ),
                //   //     ))
                //   //       // Text('Monday'),
                //   //       // Text('Tuesday'),
                //   //       // Text('Wednesday'),
                //   //       // Text('Thursday'),
                //   //       // Text('Friday'),
                //   //       // Text('Saturday')
                      
                //   //   ),
                //   // ),
                // ),
                // Expanded(child: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     Monday()
                //   //   Container(
                //   //   child: Center(
                //   //     Monday(),
                //   //   ),
                //   // ), 
                //   //  Container(
                //   //   child: Center(
                //   //      Tuesday(),
                //   //   ),
                //   // ), 
                //   // Container(
                //   //   child: Center(
                //   //     Wednesday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //     Thursday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Friday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Saturday()
                //   //   ),
                //   // ),
              
                 
                // ],)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
class Tuesday extends StatelessWidget {
  const Tuesday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //    height: 50,
                //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
                //    child: TabBar(
                //     controller: _tabController,
                //      isScrollable: true,
                //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                //       indicatorColor: Colors.red,
                //     tabs: [ 
                //       Tab(child: Text('Monday'),),
                //       Tab(child: Text('Tuesday'),),
                //        Tab(child: Text('Wednesday'),),
                //         Tab(child: Text('Thursday'),),
                //          Tab(child: Text('Friday'),),
                //           Tab(child: Text('Saturday'),),
      
                //     ],
                //    )),
                   
                
                //   // child: SingleChildScrollView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   child: Row(
                      
                //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   //     children: List.generate(tabs.length, 
                //   //     (index) => GestureDetector(
                //   //        onTap: () {
                //   //     setState(() {
                //   //       _selectedIndex = index;
                //   //     });
                //   //   },
                //   //   child: Container(
                //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                //   //     decoration: BoxDecoration(
                //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
                //   //        borderRadius: BorderRadius.circular(10),
                //   //     ),
                       
                //   //      child: Text( tabs[index],
                //   //       style: TextStyle(
                //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
                //   //         //fontWeight: FontWeight.bold,
                //   //       ),),
                //   //   ),
                //   //     ))
                //   //       // Text('Monday'),
                //   //       // Text('Tuesday'),
                //   //       // Text('Wednesday'),
                //   //       // Text('Thursday'),
                //   //       // Text('Friday'),
                //   //       // Text('Saturday')
                      
                //   //   ),
                //   // ),
                // ),
                // Expanded(child: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     Monday()
                //   //   Container(
                //   //   child: Center(
                //   //     Monday(),
                //   //   ),
                //   // ), 
                //   //  Container(
                //   //   child: Center(
                //   //      Tuesday(),
                //   //   ),
                //   // ), 
                //   // Container(
                //   //   child: Center(
                //   //     Wednesday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //     Thursday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Friday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Saturday()
                //   //   ),
                //   // ),
              
                 
                // ],)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
class Wednesday extends StatelessWidget {
  const Wednesday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //    height: 50,
                //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
                //    child: TabBar(
                //     controller: _tabController,
                //      isScrollable: true,
                //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                //       indicatorColor: Colors.red,
                //     tabs: [ 
                //       Tab(child: Text('Monday'),),
                //       Tab(child: Text('Tuesday'),),
                //        Tab(child: Text('Wednesday'),),
                //         Tab(child: Text('Thursday'),),
                //          Tab(child: Text('Friday'),),
                //           Tab(child: Text('Saturday'),),
      
                //     ],
                //    )),
                   
                
                //   // child: SingleChildScrollView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   child: Row(
                      
                //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   //     children: List.generate(tabs.length, 
                //   //     (index) => GestureDetector(
                //   //        onTap: () {
                //   //     setState(() {
                //   //       _selectedIndex = index;
                //   //     });
                //   //   },
                //   //   child: Container(
                //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                //   //     decoration: BoxDecoration(
                //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
                //   //        borderRadius: BorderRadius.circular(10),
                //   //     ),
                       
                //   //      child: Text( tabs[index],
                //   //       style: TextStyle(
                //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
                //   //         //fontWeight: FontWeight.bold,
                //   //       ),),
                //   //   ),
                //   //     ))
                //   //       // Text('Monday'),
                //   //       // Text('Tuesday'),
                //   //       // Text('Wednesday'),
                //   //       // Text('Thursday'),
                //   //       // Text('Friday'),
                //   //       // Text('Saturday')
                      
                //   //   ),
                //   // ),
                // ),
                // Expanded(child: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     Monday()
                //   //   Container(
                //   //   child: Center(
                //   //     Monday(),
                //   //   ),
                //   // ), 
                //   //  Container(
                //   //   child: Center(
                //   //      Tuesday(),
                //   //   ),
                //   // ), 
                //   // Container(
                //   //   child: Center(
                //   //     Wednesday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //     Thursday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Friday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Saturday()
                //   //   ),
                //   // ),
              
                 
                // ],)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
class Thursday extends StatelessWidget {
  const Thursday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //    height: 50,
                //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
                //    child: TabBar(
                //     controller: _tabController,
                //      isScrollable: true,
                //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                //       indicatorColor: Colors.red,
                //     tabs: [ 
                //       Tab(child: Text('Monday'),),
                //       Tab(child: Text('Tuesday'),),
                //        Tab(child: Text('Wednesday'),),
                //         Tab(child: Text('Thursday'),),
                //          Tab(child: Text('Friday'),),
                //           Tab(child: Text('Saturday'),),
      
                //     ],
                //    )),
                   
                
                //   // child: SingleChildScrollView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   child: Row(
                      
                //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   //     children: List.generate(tabs.length, 
                //   //     (index) => GestureDetector(
                //   //        onTap: () {
                //   //     setState(() {
                //   //       _selectedIndex = index;
                //   //     });
                //   //   },
                //   //   child: Container(
                //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                //   //     decoration: BoxDecoration(
                //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
                //   //        borderRadius: BorderRadius.circular(10),
                //   //     ),
                       
                //   //      child: Text( tabs[index],
                //   //       style: TextStyle(
                //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
                //   //         //fontWeight: FontWeight.bold,
                //   //       ),),
                //   //   ),
                //   //     ))
                //   //       // Text('Monday'),
                //   //       // Text('Tuesday'),
                //   //       // Text('Wednesday'),
                //   //       // Text('Thursday'),
                //   //       // Text('Friday'),
                //   //       // Text('Saturday')
                      
                //   //   ),
                //   // ),
                // ),
                // Expanded(child: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     Monday()
                //   //   Container(
                //   //   child: Center(
                //   //     Monday(),
                //   //   ),
                //   // ), 
                //   //  Container(
                //   //   child: Center(
                //   //      Tuesday(),
                //   //   ),
                //   // ), 
                //   // Container(
                //   //   child: Center(
                //   //     Wednesday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //     Thursday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Friday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Saturday()
                //   //   ),
                //   // ),
              
                 
                // ],)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
class Friday extends StatelessWidget {
  const Friday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
class Saturday extends StatelessWidget {
  const Saturday({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         //scrollDirection: Axis.horizontal,
          child: Container(
            color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Copy'),
                            VerticalDivider(),
                            Text('Excel'),
                            VerticalDivider(),
                            Text('CSV'),
                            VerticalDivider(),
                            Text('PDF'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //    height: 50,
                //    child: PreferredSize(preferredSize: Size.fromHeight(30.0), 
                //    child: TabBar(
                //     controller: _tabController,
                //      isScrollable: true,
                //       unselectedLabelColor: const Color.fromARGB(255, 54, 50, 50),
                //       indicatorColor: Colors.red,
                //     tabs: [ 
                //       Tab(child: Text('Monday'),),
                //       Tab(child: Text('Tuesday'),),
                //        Tab(child: Text('Wednesday'),),
                //         Tab(child: Text('Thursday'),),
                //          Tab(child: Text('Friday'),),
                //           Tab(child: Text('Saturday'),),
      
                //     ],
                //    )),
                   
                
                //   // child: SingleChildScrollView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   child: Row(
                      
                //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   //     children: List.generate(tabs.length, 
                //   //     (index) => GestureDetector(
                //   //        onTap: () {
                //   //     setState(() {
                //   //       _selectedIndex = index;
                //   //     });
                //   //   },
                //   //   child: Container(
                //   //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                //   //     decoration: BoxDecoration(
                //   //       color: _selectedIndex == index ? Colors.red : Colors.transparent,
                //   //        borderRadius: BorderRadius.circular(10),
                //   //     ),
                       
                //   //      child: Text( tabs[index],
                //   //       style: TextStyle(
                //   //         color: _selectedIndex == index ? Colors.white : Colors.black,
                //   //         //fontWeight: FontWeight.bold,
                //   //       ),),
                //   //   ),
                //   //     ))
                //   //       // Text('Monday'),
                //   //       // Text('Tuesday'),
                //   //       // Text('Wednesday'),
                //   //       // Text('Thursday'),
                //   //       // Text('Friday'),
                //   //       // Text('Saturday')
                      
                //   //   ),
                //   // ),
                // ),
                // Expanded(child: TabBarView(
                //   controller: _tabController,
                //   children: [
                //     Monday()
                //   //   Container(
                //   //   child: Center(
                //   //     Monday(),
                //   //   ),
                //   // ), 
                //   //  Container(
                //   //   child: Center(
                //   //      Tuesday(),
                //   //   ),
                //   // ), 
                //   // Container(
                //   //   child: Center(
                //   //     Wednesday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //     Thursday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Friday(),
                //   //   ),
                //   // ),
                //   // Container(
                //   //   child: Center(
                //   //      Saturday()
                //   //   ),
                //   // ),
              
                 
                // ],)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Physics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Anil V K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  'Muhammed P K',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 80, 80),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Period'),
                                SizedBox(height: 4),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Subject'),
                                SizedBox(height: 4),
                                Text(
                                  'Mathematics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Teacher'),
                                SizedBox(height: 4),
                                Text(
                                  ' K Sarath',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 82, 79, 79)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Room ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Room1 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}