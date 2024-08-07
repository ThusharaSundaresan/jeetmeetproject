// // // Scaffold(
// // //       body: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.stretch,
// // //         children: [
// // //           Expanded(
// // //             flex:20 ,
// // //             child: Container(
// // //               //height: 200,
// // //               decoration: BoxDecoration(
// // //                 image: DecorationImage(
// // //                   image: AssetImage("assets/log.jpg"),
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: Center(
// // //               child: Text(
// // //                 'Login',
// // //                 style: TextStyle(
// // //                   fontSize: 20,
// // //                   color: Color.fromARGB(239, 241, 24, 9),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// //  Stack(
// //         children: [
// //           Container(
// //             height: 400,
// //             width: double.infinity,
// //              decoration: BoxDecoration(
// //     border: Border.all(
// //       color: Colors.red,
// //     ),
// //     borderRadius: BorderRadius.all(Radius.circular(20))
// //   ),
// //            // color: Colors.redAccent,
// //             padding: const EdgeInsets.all(8),
// //             child: ClipRRect(
// //               borderRadius: BorderRadius.circular(16.0),
// //               child: Container(
// //               height: 200,
// //               width: 300,
// //               color: Colors.white,
// //               child: const CircleAvatar(
// //                 radius: 15,
// //                 backgroundImage: NetworkImage('https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o='),
// //               ),
              
                    
// //                             ),
// //             ),
          
// //           ),
// //         ],
// //       ),
//    //27/02=========11111
//    //
//    //   ExpansionTile(
//             //    tilePadding: EdgeInsets.zero,
//             //   leading: const Stack(
//             //     children: [
//             //       Icon(
//             //         Icons.person,
//             //         color: Colors.black,
//             //       ),
//             //       Positioned(
//             //         right: -8,
//             //         child: Icon(
//             //           Icons.check,
//             //           color: Colors.black,
//             //           size: 20,
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             //   title: const Text(
//             //     'Personal',
//             //     style: TextStyle(color: Colors.black),
//             //   ),
//             //   //subtitle: Text('My profile'),
//             //   trailing: const Icon(Icons.arrow_drop_down_sharp),
//             //   //childrenPadding: EdgeInsets.zero,
//             //   children: <Widget>[
//             //     ListTile(title: Text('My Profile'),),
//             //     ListTile(title: Text('My Diaries'),),
//             //     ListTile(title: Text('Staff Directory'),),
//             //      ListTile(title: Text('Calender'),),
//             //      ExpansionTile(title: Text('Leave Application'),
//             //      children: <Widget>[
//             //       ListTile(title: Text('Assigned Leave'),),
//             //        ListTile(title: Text('Leave Apply'),),
//             //      ],)

//             //   ],
//             //   // onTap: () {
//             //   //   Navigator.pop(context);
//             //   // },
//             // ), 

//             // today
//             import 'package:flutter/material.dart';
// import 'package:project_jee/Profilepage.dart';

// class TimeTableReport extends StatelessWidget {
//   const TimeTableReport({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TimeTablePage(),
//     );
//   }
// }

// class TimeTablePage extends StatefulWidget {
//   const TimeTablePage({Key? key});

//   @override
//   State<TimeTablePage> createState() => _TimeTablePageState();
// }

// class _TimeTablePageState extends State<TimeTablePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int _selectedIndex = 0;
//   List<String> tabs = [
//     'Monday',
//     'Tuesday',
//     'Wednesday',
//     'Thursday',
//     'Friday',
//     'Saturday'
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: tabs.length, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProfilePage()),
//             );
//           },
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//         ),
//         title: Text(
//           'Time Table Report',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.red,
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.message,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 16),
//           Container(
//             height: 50,
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   SizedBox(width: 16),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                     ),
//                     padding: EdgeInsets.all(16.0),
//                     child: Row(
//                       children: const [
//                         Text('Copy'),
//                         VerticalDivider(),
//                         Text('Excel'),
//                         VerticalDivider(),
//                         Text('CSV'),
//                         VerticalDivider(),
//                         Text('PDF'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16),
//           Container(
//             height: 50,
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: List.generate(
//                   tabs.length,
//                   (index) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _selectedIndex = index;
//                       });
//                       _tabController.animateTo(index);
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 12, horizontal: 20),
//                       decoration: BoxDecoration(
//                         color: _selectedIndex == index
//                             ? Colors.red
//                             : Colors.transparent,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Text(
//                         tabs[index],
//                         style: TextStyle(
//                           color: _selectedIndex == index
//                               ? Colors.white
//                               : Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 16),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 dayContent('Monday'),
//                 dayContent('Tuesday'),
//                 dayContent('Wednesday'),
//                 dayContent('Thursday'),
//                 dayContent('Friday'),
//                 dayContent('Saturday'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget dayContent(String day) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 16),
//           Container(
//             height: 190,
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 84, 80, 80),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             padding: EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: EdgeInsets.all(20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('Period'),
//                           SizedBox(height: 4),
//                           Text(
//                             '6',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: const Color.fromARGB(255, 82, 79, 79),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         width: 120,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('Subject'),
//                           SizedBox(height: 4),
//                           Text(
//                             'Physics',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: const Color.fromARGB(255, 82, 79, 79),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         width: 120,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('Teacher'),
//                           SizedBox(height: 4),
//                           Text(
//                             'Anil V K',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: const Color.fromARGB(255, 82, 79, 79),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Room ',
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                     Text(
//                       'Room1 ',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







//   SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 190,
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 84, 80, 80),
//                       borderRadius: BorderRadius.circular(10)),
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         padding: EdgeInsets.all(20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Period'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   '6',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 120,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Subject'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Physics',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 120,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Teacher'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Anil V K',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Room ',
//                             style: TextStyle(color: Colors.white, fontSize: 15),
//                           ),
//                           Text(
//                             'Room1 ',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 190,
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 84, 80, 80),
//                       borderRadius: BorderRadius.circular(10)),
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         padding: EdgeInsets.all(20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Period'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   '2',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 100,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Subject'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Mathematics',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 80,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Teacher'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Muhammed P K',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Room ',
//                             style: TextStyle(color: Colors.white, fontSize: 15),
//                           ),
//                           Text(
//                             'Room1 ',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 190,
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 84, 80, 80),
//                       borderRadius: BorderRadius.circular(10)),
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         padding: EdgeInsets.all(20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Period'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   '1',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 100,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Subject'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   'Mathematics',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               width: 80,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text('Teacher'),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   ' K Sarath',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: const Color.fromARGB(255, 82, 79, 79)),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Room ',
//                             style: TextStyle(color: Colors.white, fontSize: 15),
//                           ),
//                           Text(
//                             'Room1 ',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
// void ProfilePagedet() async {
  // print("ppppppppppppppppprrrrrr");
   
  //   final result = await ApiClass().profileuserapi();
  //   print("infoooooooooooooooooooooooo");
  //   setState(() {
  //     fname = result!.student.firstName +
  //         " " +
  //         result.student.middleName +
  //         " " +
  //         result.student.lastName;
      
  //     regnum = result.student.regNumber;
  //     cls= result.student.classname.name;
  //     divi = result.student.divisions.name;
  //     pname = result.student.parents.firstName +
  //         " " +
  //         result.student.parents.lastName;
  //         dbirth=result.student.dob;

      
  //     profileimaageUrl = result.student.profileImageUrl;
  //     profileImage = result.student.profileImage;
  //     ParentProfileImg = result.student.parents.imageUrl;
  //     // print(
  //     //     "infoooooooooooooormationnnnnnnnnn$profileimaageUrl");
  //     savenameData(fname);
  //     savepicData(profileimaageUrl);
  //     saveparentpic(ParentProfileImg);
  //   });
  // }

  // }
  // https://github.com/Akashellath/Edumeet
  //   Future<void> selectDairyDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDairyDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2101));
  //   if (picked != null && picked != selectedDairyDate) {
  //     selectedDairyDate = picked;
  //     // DateTime now = DateTime.now();
  //     String formmattedDairyDate =
  //         DateFormat("yyyy-MM-dd").format(selectedDairyDate);
  //     DairyDatecontroller.text = formmattedDairyDate.toString();
  //   }
  // }



  // Padding(
  //                   padding: EdgeInsets.only(left: 40.0),
  //                   child: ExpansionTile(
  //                     title: Text('Leave Application'),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(4.0),
  //                       side: BorderSide.none,
  //                     ),
  //                     children: <Widget>[
  //                       Padding(
  //                         padding: EdgeInsets.only(left: 40.0),
  //                         child: ListTile(
  //                           title: Text('Assigned Leave'),
  //                           onTap: () {
  //                             Navigator.push(
  //                               context,
  //                                MaterialPageRoute(builder: (context)=> AssignedLeave(
  //                                    tabIndex: 0,
  //                                )));
  //                           },
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(left: 40.0),
  //                         child: ExpansionTile(
  //                           title: Text('Leave Apply'),
  //                           children: [ 
  //                             GestureDetector(
  //                                  onTap: (){
  //                             Navigator.push(
  //                               context,
  //                                MaterialPageRoute(builder: (context)=>AssignedLeave(
  //                                  tabIndex: 0,
  //                                )));
  //                           },
  //                             ),
  //                               GestureDetector(
  //                                  onTap: (){
  //                             Navigator.push(
  //                               context,
  //                                MaterialPageRoute(builder: (context)=>AssignedLeave(
  //                                  tabIndex: 1,
  //                                )));
  //                           },
  //                           child: ListTile(
  //                             title: Text("Leave Apply"),
  //                           ),
  //                             )
  //                           ],
                           
  //                         ),
  //                       ),
  //                       //  Padding(
  //                       //   padding: EdgeInsets.only(left: 40.0),
  //                       //   child: ListTile(
  //                       //     title: Text('Leave Apply'),
  //                       //     onTap: (){
  //                       //       Navigator.push(
  //                       //         context,
  //                       //          MaterialPageRoute(builder: (context)=>AssignedLeave(
  //                       //            tabIndex: 1,
  //                       //          )));
  //                       //     },
  //                       //   ),
  //                       // ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //  var leavecategory = ["Annul", "Casual", "Onam"];

  // var leaveapplydata = [];
  // var id4 = "";

  // String slectedcategory = "";

  // var startingdate = "";
  // final startingdatecontroller = TextEditingController();
  // var endingdate = "";
  // final endingdatecontroller = TextEditingController();

  // TimeOfDay startingtime = TimeOfDay.now();
  // final startingtimecontroller = TextEditingController();
  // var endingtime = TimeOfDay.now();
  // final endingtimecontroller = TextEditingController();
  // final reasoncontroller = TextEditingController();

  // var clr = Colors.orange;
  // var sta = "Pending";