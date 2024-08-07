import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project_jee/api.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({super.key});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  var names = [];
  var data1 = [];
  var leavecategory = ["Annual", "Casual", "Onam"];
  final startingdatecontroller = TextEditingController();
  final Endingdatecontroller = TextEditingController();
  final StartingTimecontroller = TextEditingController();
  final EndingTimecontroller = TextEditingController();
  final ReasonController = TextEditingController();
  TimeOfDay startingtime = TimeOfDay.now();
  var endingtime = TimeOfDay.now();
  var Startingdate = "";
  var EndingDate = "";
  String selcategory = "";
  var id = "";
  var clr = const Color.fromARGB(255, 255, 242, 0);
  var sta = "Pending";

  @override
  void initState() {
    super.initState();
    GetLeave();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = startingtime.format(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 253, 253, 25),
      body: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 0.0)
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.filter_alt),
                          ),
                          const Text("Filter"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data1.length,
              itemBuilder: (context, index) {
                id = index.toString();
                if (data1[index].status == 0) {
                  clr = Colors.orange;
                  sta = "Pending";
                } else if (data1[index].status == 1) {
                  clr = Colors.green;
                  sta = "Approved";
                } else if (data1[index].status == 2) {
                  clr = Colors.red;
                  sta = "Rejected";
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Date:',
                              style: TextStyle(
                                //color: Color.fromARGB(248, 253, 18, 18),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(data1[index].applyDate.toString()),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text("Status:"),
                                ),
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: clr,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                    child: Text(
                                      sta,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 170,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 210,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Applicant Name"),
                                              Row(
                                                children: [
                                                  Text(data1[index]
                                                      .studentname
                                                      .firstName
                                                      .toString()),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Text(data1[index]
                                                        .studentname
                                                        .middleName
                                                        .toString()),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Text(data1[index]
                                                        .studentname
                                                        .lastName
                                                        .toString()),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("To :"),
                                                  Text(data1[index]
                                                      .toDate
                                                      .toString())
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("From :"),
                                                    Text(data1[index]
                                                        .fromDate
                                                        .toString()),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.black,
                                        width: 5,
                                        thickness: 0.0,
                                        indent: 15,
                                        endIndent: 15,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 200,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, right: 40),
                                          child: Column(
                                            children: [
                                              Text("Category"),
                                              Text(data1[index]
                                                  .leaveCategoryname
                                                  .name
                                                  .toString()),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Column(
                                                  children: [
                                                    Text("Days"),
                                                    Text(data1[index]
                                                        .leaveDays
                                                        .toString())
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Reason"),
                                      Text(data1[index].reason.toString()),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Attachment"),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Divider(
                                          thickness: 0.0,
                                          color: Colors.black,
                                          indent: 10,
                                          endIndent: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                //              ));
                                              },
                                              child: Text(
                                                "Edit",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              style: ButtonStyle(
                                                  shape: MaterialStatePropertyAll<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5))),
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.orange)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Delete",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5))),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.red)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 70,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (cnt1) => AlertDialog(
                            content: Container(
                              height: 600,
                              width: double.infinity,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Leave Application",
                                          style: TextStyle(fontSize: 19),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                           
                                               Navigator.of(cnt1).pop();
                                            },
                                            icon: Icon(Icons.close))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text("Select category")),
                                          items: leavecategory
                                              .map((e) => DropdownMenuItem(
                                                    child: Text(e),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: ((value) {
                                            setState(() {
                                              selcategory = value.toString();
                                            });
                                          })),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        controller: startingdatecontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Starting Date",
                                            suffixIcon: IconButton(
                                                onPressed: () async {
                                                  selectStartDate(context);
                                                },
                                                icon: Icon(Icons.date_range))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        controller: StartingTimecontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Starting Time",
                                            suffixIcon: IconButton(
                                                onPressed: () async {
                                                  final selecttime1 =
                                                      await showTimePicker(
                                                          context: context,
                                                          initialTime:
                                                              TimeOfDay.now());
                                                  if (selecttime1 != null &&
                                                      selecttime1 !=
                                                          startingtime) {
                                                    setState(() {
                                                      StartingTimecontroller
                                                              .text =
                                                          selecttime1
                                                              .toString();
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.schedule))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        controller: Endingdatecontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "End Date",
                                            suffixIcon: IconButton(
                                                onPressed: () async {
                                                  selectEndDate(context);
                                                  // final selectedate3 =
                                                  //     await showDatePicker(
                                                  //         context: context,
                                                  //         initialDate:
                                                  //             DateTime.now(),
                                                  //         firstDate: DateTime
                                                  //                 .now()
                                                  //             .subtract(Duration(
                                                  //                 days: 1900)),
                                                  //         lastDate:
                                                  //             DateTime(4000));
                                                  // setState(() {
                                                  //   EndingDate =
                                                  //       DateFormat('dd-MM-yyyy')
                                                  //           .format(
                                                  //               selectedate3!);
                                                  //   Endingdatecontroller.text =
                                                  //       EndingDate;
                                                  // });
                                                },
                                                icon: Icon(Icons.date_range))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        controller: EndingTimecontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "End Time",
                                            suffixIcon: IconButton(
                                                onPressed: () async {
                                                  final selecttime2 =
                                                      await showTimePicker(
                                                          context: context,
                                                          initialTime:
                                                              TimeOfDay.now());
                                                  if (selecttime2 != null &&
                                                      selecttime2 !=
                                                          endingtime) {
                                                    setState(() {
                                                      EndingTimecontroller
                                                              .text =
                                                          selecttime2
                                                              .toString();
                                                    });
                                                  }
                                                },
                                                icon: Icon(Icons.schedule))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 200,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: TextField(
                                          controller: ReasonController,
                                          keyboardType: TextInputType.multiline,
                                          enabled: true,
                                          maxLines: null,
                                          decoration: InputDecoration(
                                              labelText: "Reason",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Attachment",
                                            suffixIcon: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.attach_file))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Addleave();
                                          Navigator.of(cnt1).pop();
                                        },
                                        child: Text(
                                          "Submit",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.grey)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
                child: Text(
                  "Add a leave application",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void GetLeave() async {
    final respo = await ApiClass().LeaveApplyApi();
    print("dsgvdfgdfh$respo");
    setState(() {
      data1.addAll(respo!.data!);
      print('dddddddddddddddddddddddeeeeeeeeeee$respo');
    });
  }

  void Addleave() async {
    final leavecategory = 1;
    final startingdatecontroller1 = startingdatecontroller.text;
    final endingdatecontroller1 = Endingdatecontroller.text;
    final startingtimecontroller1 = StartingTimecontroller.text;
    final endingtimecontroller1 = Endingdatecontroller.text;
    final reasoncontroller1 = ReasonController.text;
    if (startingdatecontroller1.isEmpty) {
      showErrorMessage("Starting Date is Empty");
    } else if (endingdatecontroller1.isEmpty) {
      showErrorMessage("Ending Date is Empty");
    } else if (startingtimecontroller1.isEmpty) {
      showErrorMessage("Starting Time is Empty");
    } else if (endingtimecontroller1.isEmpty) {
      showErrorMessage("Ending Time is Empty");
    } else if (reasoncontroller1.isEmpty) {
      showErrorMessage("Enter your Reason");
    } else {
      final respo22 = FormData.fromMap({
        "start_date": startingdatecontroller1,
        "end_date": endingdatecontroller1,
        "start_time": startingtimecontroller1,
        "end_time": endingtimecontroller1,
        "leave_category": "2",
        "reason": reasoncontroller1,
        "attachment": ""
      });
      print(
          "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww33333333$leavecategory$startingdatecontroller1$endingdatecontroller1$startingtimecontroller1$endingtimecontroller1$reasoncontroller1");
      print("ghfghfgjfg${respo22}");
      final res = await ApiClass().LeaveAplyAlertApi(respo22);
      print("res***********$res");
      if (res != null) {
        if (res.status == 1) {
          print("successs*****************");
          showSuccessMessage("Leave has applied");
        }
      } else {
        showErrorMessage('Failed');
      }
    }
  }

  void showSuccessMessage(String message) {
    print("innnnnnnnnnnnnn");
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  void showErrorMessage(String msg) {
    MotionToast.error(description: Text(msg), position: MotionToastPosition.top)
        .show(context);
  }

  // pause() {
  //   return Future.delayed(const Duration(seconds: 2), () {
  //     Navigator.pop(context);
  //   });
  // }

  DateTime selectedStartDate = DateTime.now();
  Future<void> selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
        String formmattedStartDate =
            DateFormat("dd-MM-yyyy").format(selectedStartDate);
        startingdatecontroller.text = formmattedStartDate.toString();
      });
    }
  }

  DateTime selectedEndDate = DateTime.now();
  Future<void> selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
        String formattedEndDate =
            DateFormat("dd-MM-yyyy").format(selectedEndDate);
        Endingdatecontroller.text = formattedEndDate.toString();
      });
    }
  }
}
