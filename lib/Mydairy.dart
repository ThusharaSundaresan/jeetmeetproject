
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project_jee/Adddiaries.dart';
import 'package:project_jee/Profilepage.dart';
import 'package:project_jee/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

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
       var date = "";
        var id = "";
         var postdiary = [];
       var DairyDatecontroller = TextEditingController();
       var DairyNotecontroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    diarypost();
  }
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
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                 padding: const EdgeInsets.only(right: 10, top: 20),
                 child: GestureDetector(
                  onTap: () {
                    showDialog(context: context,
                     builder: (cnt) =>AlertDialog(
                      content: Container(
                         height: 400,
                         width: double.infinity,
                         child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add Diaries'),
                                 IconButton(
                                              onPressed: () {
                                                Navigator.of(cnt).pop();
                                              },
                                              icon: Icon(Icons.close))                              
                                              ],
                            ),
                            TextField(
                              controller: DairyDatecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                               labelText: "Enter Date",
                               suffixIcon: IconButton(onPressed: () async {
                                final selDate = await showDatePicker(context: context, 
                                initialDate:DateTime.now(),
                                firstDate: DateTime(2022), 
                          lastDate: DateTime(2050));
                      
                          setState(() {
                            date=DateFormat.yMMMMEEEEd().format(selDate!);
                            DairyDatecontroller.text = date;
                            print("dsteee$date");
                          });
                               }, 
                               icon: Icon(Icons.date_range))
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
                                            controller: DairyNotecontroller,
                                            keyboardType:
                                                TextInputType.multiline,
                                            expands: true,
                                            maxLines: null,
                                            decoration: InputDecoration(
                                              labelText: "Enter Note",
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ElevatedButton(
                                          onPressed: (
                                            
                                          ) 
                                          
                                          {
                                            print("dfssfsdfds");
                                            setState(() {
                                         Dairypost();
                                        Navigator.of(cnt).pop();
                                            });
                                          },
                                          child: 
                                      
                                          Text(
                                            "Submit",
                                            style:
                                                TextStyle(color: Colors.white),
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
                     ));
                  },
                  child: Text(
                      "Add Diaries  +",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                 ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: postdiary.length,
                itemBuilder: (context, index){
                  id = index.toString();
                  return Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: Container(
                       height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                   height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(5))
                                  ),
                                  child: Center(child: Text(postdiary[index].id.toString(),
                                  style: TextStyle(color: Colors.white),)),
                                ),
                                Padding(padding: const EdgeInsets.only(left: 10, top: 10),
                                 child: Text(
                                    postdiary[index].note.toString(),
                                    style: TextStyle(fontSize: 18),
                                  ),)
                              ],
                            ),
                           
                            Padding(padding: const EdgeInsets.only(left: 45, top: 20),
                            child: Row(
                              children: [ 
                                ElevatedButton(onPressed: (){
                                  showDialog(context: context, 
                                  builder: (cnt) => AlertDialog(
                                    content: Container(
                                       height: 400,
                                  width: double.infinity,
                                  child: Column(
                                    children: [ 
                                      Row( 
                                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                        children: [ 
                                           Text("Add Diares"),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.close))
                                        ],
                                      ),
                                      
                                      Padding(padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 200,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                  color: Colors.black)),
                                           
                                          )
                                      ),
                                      Padding(padding: const EdgeInsets.only(top: 10),
                                      child: ElevatedButton(onPressed: (){
                                        setState(() {
                                           diaryedit();
                                        });
                                      }, child: Text(   "Submit",
                                            style:
                                                TextStyle(color: Colors.white),
                                                ),
                                                style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.grey)),),)
                                    ],
                                  ),
                                    ),
                                  ));
                                }, child: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                     style: ButtonStyle(
                                      shape: MaterialStatePropertyAll<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.greenAccent),
                                    ),),
                                    Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.redAccent)),
                                    ),
                                  )
                              ],
                            ),)
                          ],
                        ),
                    ),);
                }))
          ],
        
          ),
          
          ),
          
          
    );
  }
  void diarypost()async{
  final result23= await ApiClass().DiariesApi();
  setState(() {
    postdiary .addAll(result23!.data!);
  });;

  }
  void diaryedit() async{
    final datecon=DairyDatecontroller.text;
    final notecon=DairyNotecontroller.text;
    if (datecon.isEmpty) {
      showErrorMessage('Date is Empty');
      
    }else if(notecon.isEmpty){
      showErrorMessage('Note is Empty');
    }
    else{
      final frmdt= FormData.fromMap({
        "id":id,
      });
      final reslut55= await ApiClass().DiarieseditAPI(frmdt);
      if (reslut55!=null) {
        showSuccessMessage("Successfully Edited");
        Navigator.pop(context);
      }
    }
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
      "id":id,
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
      dismissable: false,).show( context );
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
    ).show(context );
  }
}
