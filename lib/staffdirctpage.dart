import 'package:flutter/material.dart';
import 'package:project_jee/Profilepage.dart';
import 'package:project_jee/api.dart';

class StaffDirectoryPage extends StatelessWidget {
  const StaffDirectoryPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaffPage(),
    );
  }
}

class StaffPage extends StatefulWidget {
  const StaffPage({Key? key});

  @override
  State<StaffPage> createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {

    var StData = [];
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getstaffdirectory();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Staff Directory',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
          },
        ),
      ),
    
     body: Container(
        color: Colors.grey[200], 
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0), 
            Text(
              'Subject Teacher',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0), 
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
               
               child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context,index)=>Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 90,
                  width: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                                    blurRadius: 2.2,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0, 2.0)
                      )
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            Row( 
                              children: [ 
                                 Text(
                        'Subject    :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                         color: Color.fromARGB(
                                                    255, 58, 58, 58),
                        ),
                      ),
                       Text(StData[index].subject,
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 58, 58, 58),
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold)),
                              ],
                            ),
                             SizedBox(
                                      height: 10,),
                             Row(
                              children: [ 
                                Text("Teacher  :",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 58, 58, 58),
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold)),
                                                Text(StData[index].teachers,
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 58, 58, 58),
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold)),
                              ],
                             )         
                          ],
                        ),)
                    ],
                  ),
                ),),
                itemCount: StData.length,),
            )
          ],
        ),
      ),
    );
  }
  void Getstaffdirectory() async{

 final response= await ApiClass().StaffDirectoryApi();

 setState(() {
   StData.addAll(response!.data);
 });
  }
}
