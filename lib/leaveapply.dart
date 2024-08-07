import 'package:flutter/material.dart';
import 'package:project_jee/applyleave.dart';
import 'package:project_jee/assignleave.dart';

class leaveapply extends StatefulWidget {
  int selectedpage;
   leaveapply({super.key,required this.selectedpage});

  @override
  State<leaveapply> createState() => _leaveapplyState();
}

class _leaveapplyState extends State<leaveapply> with SingleTickerProviderStateMixin {
  late TabController tcontroller;
  final List<String> titlelists = ["Assigned Leave", "Leave Apply"];
  late String currentTitle;
  @override 
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTitle = titlelists[0];
    tcontroller = TabController(
    initialIndex: widget.selectedpage,
      length: 2, vsync: this);

    tcontroller.addListener(changetitle);
  }

  void changetitle() {
    setState(() {
      currentTitle = titlelists[tcontroller.index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(253, 253, 253, 250),
      appBar: AppBar(
        title: Text(
          currentTitle,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_outlined)),
        ],
          iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        bottom: TabBar(
          controller: tcontroller,
          tabs: [Tab(text: "Assigned Leave"), Tab(text: "Leave Apply")],
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
        ),
      ),
      body: TabBarView(
         controller: tcontroller,
        children: [ 
                         Assignleave(),ApplyLeave()
      ]),
    );
  }
}