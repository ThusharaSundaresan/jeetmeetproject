// SingleChildScrollView(
//         child: Container(
//           color: Color.fromARGB(255, 170, 107, 107),
//           padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//           child: Column(
//            // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 verticalDirection: VerticalDirection.down,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                       ),
//                       padding: EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: const [
//                           Text('Copy'),
//                           VerticalDivider(),
//                           Text('Excel'),
//                           VerticalDivider(),
//                           Text('CSV'),
//                           VerticalDivider(),
//                           Text('PDF'),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   Container(
//                     height: 50,
//                     width: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color.fromARGB(255, 120, 246, 231),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(Icons.filter_alt_outlined),
//                         ),
//                         Text('Filter')
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
              

//               SizedBox(height: 16),
//               Container( color: Colors.amber,
//                 height: MediaQuery.of(context).size.height/1.5,
//                 width: MediaQuery.of(context).size.width,
//                 child:  ListView.builder(
//              // shrinkWrap: true,
//               itemCount: data1.length,
//               itemBuilder: (context, index) {
//                  id = index.toString();
//                  if (data1[index].status == 0) {
//                   clr = Colors.orange;
//                   sta = "Pending";
//                 } else if (data1[index].status == 1) {
//                   clr = Colors.green;
//                   sta = "Approved";
//                 } else if (data1[index].status == 2) {
//                   clr = Colors.red;
//                   sta = "Rejected";
//                 }
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: 10, right: 8, left: 8),
//                       child: Row(
//                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Date: ',
//                             style: TextStyle(
//                               color: Color.fromARGB(248, 253, 18, 18),
//                               fontSize: 15,
//                             ),
//                           ),
//                          // SizedBox(width: 5,),
//                            Text(
//                             data1[index].applyDate.toString(),
//                             style: TextStyle(
//                               color: Color.fromARGB(248, 117, 114, 114),
//                               fontSize: 8,
//                             ),
//                           ),Spacer(),
//                          Text(
//                            'Status:',
//                            style: TextStyle(
//                              color: Color.fromARGB(248, 117, 114, 114),
//                              fontSize: 15,
//                            ),
//                          ),
//                          SizedBox(width: 6),
//                          Container(
//                            height: 26,
//                            width: 85,
//                            decoration: BoxDecoration( 
//                              color: clr,
//                              borderRadius: BorderRadius.circular(5)
//                            ),
//                            child: Center(
//                               child: Text(sta,
//                               style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
//                              fontSize: 18,
//                              fontWeight: FontWeight.w500,),),
//                            ),
//                          ),
//                        ],
//                       ),
//                     ),
//                 SizedBox(height: 16),
//                     Container(
//                       height: 320,
//                       padding: EdgeInsets.all(6.0),
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 139, 89, 89),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                         /*  Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Applicant Name',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Text(data1[index]
//                                                     .studentname
//                                                     .firstName
//                                                     .toString(),
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromRGBO(7, 12, 12, 0.592),
//                                     fontSize: 18,
//                                   ),
//                                 ),
                                
//                                 SizedBox(height: 10),
//                                 Text(
//                                   'Schedule',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Row(
//                                   children:  [
//                                      Text("From :"),
//                                       Text(data1[index].fromDate.toString()) ,
                                       
//                                      Text("To :"),
//                                      Text(data1[ index].toDate.toString())
                                      
//                                   ],
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text(
//                                   'Reason',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                  Text(
//                                   data1[index]
//                                         .reason
//                                         .toString(),
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Text(
//                                   'for api testing',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   'Attachment',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(248, 117, 114, 114),
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 26,
//                                   width: 85,
                                 
//                                   decoration: BoxDecoration(
//                                     color:  Color.fromARGB(103, 60, 59, 59),
//                                     borderRadius: BorderRadius.circular(5)
//                                   ),
//                                   child: Text('            '),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Divider(
//                                   height: 3,
//                                   thickness: 1,
//                                   color: Colors.black,
//                                   indent: 10,
//                                   endIndent: 10,
//                                 ),
//                                 SizedBox(height: 5),
//                                 Row(
//                                   children: [
//                                     Container(
                                      
//                                      height: 26,
//                                      width: 85,
//                                      decoration: BoxDecoration(
//                                       color: Colors.orange,
//                                       borderRadius:
//                                               BorderRadius.circular(5)
//                                      ),
//                                       child: Text(
//                                         'Edit',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 10),
//                                     Container(
//                                       height: 26,
//                                       width: 85,
                                      
//                                       decoration: BoxDecoration(
//                                         color: Colors.grey,
//                                          borderRadius:
//                                               BorderRadius.circular(5)
//                                       ),
//                                       child: Text(
//                                         'Delete',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),*/
//                           SizedBox(width: 10),
//                           Container(
//                             height: 160,
//                             width: 1,
//                             color: Colors.grey,
//                             margin: EdgeInsets.symmetric(horizontal: 8),
//                           ),
//                           SizedBox(width: 10),
//                           // ignore: prefer_const_constructors
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             // ignore: prefer_const_literals_to_create_immutables
//                             children: [
//                               Text(
//                                 'Category',
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   color: Color.fromARGB(248, 117, 114, 114),
//                                 ),
//                               ),
//                                Text(
//                                 data1[index]
//                                                 .leaveCategoryname
//                                                 .name
//                                                 .toString(),
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   color: Color.fromARGB(248, 117, 114, 114),
//                                 ),
//                               ),
//                               //SizedBox(height: 5),
//                               // Text(
//                               //   'Casual',
//                               //   style: TextStyle(
//                               //     fontWeight: FontWeight.bold,
//                               //     color: Color.fromRGBO(7, 12, 12, 0.592),
//                               //     fontSize: 18,
//                               //   ),
//                               // ),
//                               // Text(
//                               //   data1[index]
//                               //                   .leaveDays
//                               //                   .name
//                               //                   .toString(),
//                               //   style: TextStyle(
//                               //     fontWeight: FontWeight.bold,
//                               //     color: Color.fromRGBO(7, 12, 12, 0.592),
//                               //     fontSize: 18,
//                               //   ),
//                               // ),
//                               SizedBox(height: 10),
//                               Text(
//                                 'Days',
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   color: Color.fromARGB(248, 117, 114, 114),
//                                 ),
//                               ),
//                               SizedBox(height: 5),
//                               Text(
//                                 data1[index]
//                                                 .leaveDays
//                                                 .name
//                                                 .toString(),
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromRGBO(7, 12, 12, 0.592),
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                    /* Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Date: ',
//                           style: TextStyle(
//                             color: Color.fromARGB(248, 117, 114, 114),
//                             fontSize: 15,
//                           ),
//                         ),
//                         Text(
//                           data1[index].applyDate.toString(),
//                           style: TextStyle(
//                             color: Color.fromARGB(248, 117, 114, 114),
//                             fontSize: 15,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Status:',
//                               style: TextStyle(
//                                 color: Color.fromARGB(248, 117, 114, 114),
//                                 fontSize: 15,
//                               ),
//                             ),
//                             SizedBox(width: 6),
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.orangeAccent,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: Text(
//                                 'Pending',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),*/
                   
                   
//                     SizedBox(height: 16),
                   
//                   ],
//                 );
//               },
//                             ),
                            
//               ),
//               Text("uuuuuuuuuuuuuuuuu")
             
//             ],
//           ),
//         ),
//       ),
//import 'package:flutter/material.dart';{}
//showDialog(
                                                //     context: context,
                                                //     builder:
                                                //         (cnt1) => AlertDialog(
                                                //               content:
                                                //                   Container(
                                                //                 height: double
                                                //                     .infinity,
                                                //                 width: double
                                                //                     .infinity,
                                                //                 child:
                                                //                     SingleChildScrollView(
                                                //                   child: Column(
                                                //                     children: [
                                                //                       Row(
                                                //                         mainAxisAlignment:
                                                //                             MainAxisAlignment.spaceBetween,
                                                //                         children: [
                                                //                           Text(
                                                //                             "Leave Application",
                                                //                             style:
                                                //                                 TextStyle(fontSize: 19),
                                                //                           ),
                                                //                           IconButton(
                                                //                               onPressed: () {
                                                //                                 Navigator.pop(context);
                                                //                               },
                                                //                               icon: Icon(Icons.close))
                                                //                         ],
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child: DropdownButtonFormField(
                                                //                             decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Select category")),
                                                //                             items: leavecategory
                                                //                                 .map((e) => DropdownMenuItem(
                                                //                                       child: Text(e),
                                                //                                       value: e,
                                                //                                     ))
                                                //                                 .toList(),
                                                //                             onChanged: ((value) {
                                                //                               selcategory = value.toString();
                                                //                             })),
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             TextField(
                                                //                           controller:
                                                //                               startingdatecontroller,
                                                //                           decoration: InputDecoration(
                                                //                               border: OutlineInputBorder(),
                                                //                               labelText: "Starting Date",
                                                //                               suffixIcon: IconButton(
                                                //                                   onPressed: () async {
                                                //                                     final selectedate2 = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now().subtract(Duration(days: 2000)), lastDate: DateTime(3000));
                                                //                                     setState(() {
                                                //                                       Startingdate = DateFormat.yMMMMEEEEd().format(selectedate2!);
                                                                                     
                                                //                                       startingdatecontroller.text = Startingdate;
                                                //                                     });
                                                //                                   },
                                                //                                   icon: Icon(Icons.date_range))),
                                                //                         ),
                                                //                       ),
                                                                      // Padding(
                                                                      //   padding: const EdgeInsets
                                                                      //       .only(
                                                                      //       top:
                                                                      //           10),
                                                                      //   child:
                                                                      //       TextField(
                                                                      //     controller:
                                                                      //         StartingTimecontroller,
                                                                      //     decoration: InputDecoration(
                                                                      //         border: OutlineInputBorder(),
                                                                      //         labelText: "Starting Time",
                                                                      //         suffixIcon: IconButton(
                                                                      //             onPressed: () async {
                                                                      //               final selecttime1 = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                                                      //               if (selecttime1 != null && selecttime1 != startingtime) {
                                                                      //                 setState(() {
                                                                      //                  StartingTimecontroller.text = selecttime1.toString();
                                                                      //                 });
                                                                      //               }
                                                                      //             },
                                                                      //             icon: Icon(Icons.schedule))),
                                                                      //   ),
                                                                      // ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             TextField(
                                                //                           controller:
                                                //                               Endingdatecontroller,
                                                //                           decoration: InputDecoration(
                                                //                               border: OutlineInputBorder(),
                                                //                               labelText: "End Date",
                                                //                               suffixIcon: IconButton(
                                                //                                   onPressed: () async {
                                                //                                     final selectedate3 = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now().subtract(Duration(days: 2000)), lastDate: DateTime(3000));
                                                //                                     setState(() {
                                                //                                       EndingDate= DateFormat.yMMMMEEEEd().format(selectedate3!);
                                                //                                       Endingdatecontroller.text = EndingDate;
                                                //                                     });
                                                //                                   },
                                                //                                   icon: Icon(Icons.date_range))),
                                                //                         ),
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             TextField(
                                                //                           controller:
                                                //                               EndingTimecontroller,
                                                //                           decoration: InputDecoration(
                                                //                               border: OutlineInputBorder(),
                                                //                               labelText: "End Time",
                                                //                               suffixIcon: IconButton(
                                                //                                   onPressed: () async {
                                                //                                     final selecttime2 = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                                //                                     if (selecttime2 != null && selecttime2 != endingtime) {
                                                //                                       setState(() {
                                                //                                         EndingTimecontroller.text = selecttime2.toString();
                                                //                                       });
                                                //                                     }
                                                //                                   },
                                                //                                   icon: Icon(Icons.schedule))),
                                                //                         ),
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             Container(
                                                //                           height:
                                                //                               200,
                                                //                           width:
                                                //                               300,
                                                //                           decoration:
                                                //                               BoxDecoration(border: Border.all(color: Colors.black)),
                                                //                           child:
                                                //                               TextField(
                                                //                             controller:
                                                //                                 ReasonController,
                                                //                             keyboardType:
                                                //                                 TextInputType.multiline,
                                                //                             enabled:
                                                //                                 true,
                                                //                             maxLines:
                                                //                                 null,
                                                //                             decoration:
                                                //                                 InputDecoration(labelText: "Reason", border: InputBorder.none),
                                                //                           ),
                                                //                         ),
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             TextField(
                                                //                           decoration: InputDecoration(
                                                //                               border: OutlineInputBorder(),
                                                //                               labelText: "Attachment",
                                                //                               suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.attach_file))),
                                                //                         ),
                                                //                       ),
                                                //                       Padding(
                                                //                         padding: const EdgeInsets
                                                //                             .only(
                                                //                             top:
                                                //                                 10),
                                                //                         child:
                                                //                             ElevatedButton(
                                                //                           onPressed:
                                                //                               () {

                                                //                               },
                                                //                           child:
                                                //                               Text(
                                                //                             "Submit",
                                                //                             style:
                                                //                                 TextStyle(color: Colors.white),
                                                //                           ),
                                                //                           style:
                                                //                               ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                                                //                         ),
                                                //                       )
                                                //                     ],
                                                //                   ),
                                                //                 ),
                                                //               ),
                                                //