import 'package:flutter/material.dart';
import 'package:project_jee/api.dart';

class Assignleave extends StatefulWidget {
  const Assignleave({super.key});

  @override
  State<Assignleave> createState() => _AssignleaveState();
}

class _AssignleaveState extends State<Assignleave> {
  var AssignList = [];
  @override
   void initState() {
    // TODO: implement initState
    super.initState();
    GetAssignData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Color.fromARGB(255, 241, 238, 238),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(children: [
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
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
              return Padding(padding: EdgeInsets.all(8.0)
              ,child: Container(
                height: 100,
                width: 70,
               decoration: BoxDecoration( 
                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.2,
                                      spreadRadius: 0.0,
                                      offset: Offset(2.0, 2.0))
                                ],            
               color: Color.fromARGB(255, 255, 255, 255),
               borderRadius: BorderRadius.circular(10)),
              child: Padding(padding: EdgeInsets.all(8.0),
              child: Row( 
                children: [ 
                  Text(
                                   "onam",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 99, 98, 98),
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("8"),
                                  Text("Days"),
                ],
              ),),
              ),);
            }))
      ]))
    );
  }
  void GetAssignData() async{
    final respo= await ApiClass().LeaveApplyAddApi();
setState(() {
    AssignList.addAll(respo!.data);
});
  }
}