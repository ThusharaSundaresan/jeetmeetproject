
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project_jee/Adddiaries.dart';
import 'package:project_jee/Profilepage.dart';
import 'package:project_jee/api.dart';
import 'package:flutter/cupertino.dart';

class MyDiaries extends StatelessWidget {
  const MyDiaries({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDiaryView(),
    );
  }
}

class MyDiaryView extends StatefulWidget {
  const MyDiaryView({Key? key});

  @override
  State<MyDiaryView> createState() => _MyDiaryViewState();
}

class _MyDiaryViewState extends State<MyDiaryView> {
       var datas = [];
       var note = [];
       
       var DairyDatecontroller = TextEditingController();
       var DairyNotecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Diary',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 241, 238, 238),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                SizedBox(width: 16),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_alt_outlined),
                      ),
                      Text('Filter')
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Add Dairies',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => AddDiaries()),
                    // );
                    showDialog(context: context, 
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ 
                           Text('Add Diaries'),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop(); 
                        },
                      ),
                        ]),
                        content: SingleChildScrollView(
                          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            TextField(
              enabled: false,
              controller: DairyDatecontroller ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Date',
                suffixIcon: IconButton(
                  onPressed: () {
                      //savedate1(context);
                  },
                  icon: Icon(Icons.calendar_month_outlined),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 8),
            TextField(
              maxLines: 40,
              controller: DairyNotecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Note',
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () { 
                  Dairypost();
                  },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: Text('Save',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ],
        ),
      ),
                        ),
                      );
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 10,
                  left: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Date : 2023-04-23',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(238, 115, 7, 0.927),
                                  
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'EDIT',
                                style: TextStyle(color: Colors.white),
                              )),
                              SizedBox(width: 20,)
                            ,
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(230, 5, 16, 0.942),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'DELETE',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 30,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        '16',
                        style: TextStyle(fontSize: 15, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
                Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 10,
                  left: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Day.....Rainy Climate.....',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Date : 2023-07-12',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(238, 115, 7, 0.927),
                                  
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'EDIT',
                                style: TextStyle(color: Colors.white),
                              )),
                              SizedBox(width: 20,)
                            ,
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(230, 5, 16, 0.942),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                'DELETE',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 30,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 15, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
  
  void Dairypost() async{
    final  Date = DairyDatecontroller.text;
    final  Note = DairyNotecontroller.text;

    if (Date.isEmpty) {
      showErrorMessage(
        "Enter Date"
      );

    }else if(Note.isEmpty){
      showErrorMessage("Enter Note");
    }else{
      final formdata1= FormData.fromMap({
      "note"  : Note,
      "date" : Date,
     
    });
    print("bcbvcbvvnhbnvbnvnb  $formdata1");
     final result22= await ApiClass().DiariessaveApi(formdata1);
     if(result22 !=null){
       if (result22.status==1) {
          showSuccessMessage("Note Changed");
        }
     }
     else{
      showErrorMessage("Failed");
      
     }
    }
    
  }
  //  DateTime savedate = DateTime.now();
  //  Future<void> savedate1(BuildContext context) async{
  //   final DateTime ? picked= await showDatePicker(
  //     context: context,
  //     initialDate: savedate,
  //      firstDate: DateTime(2015),
  //       lastDate: DateTime(2050));
  //       if (picked != null && picked != savedate) {
  //         savedate = picked;
  //         String formatdate1=DateFormat;
  //       }
  //  }
  void showErrorMessage(String message){
  MotionToast.error(
     title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      
    description: Text(message),
     position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,).show( context as BuildContext);
}
void showSuccessMessage(String message) {
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
    ).show(context as BuildContext);
  }
}
