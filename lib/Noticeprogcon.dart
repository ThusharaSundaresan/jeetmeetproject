import 'package:flutter/material.dart';
import 'package:project_jee/Profilepage.dart';

class ProgramminContest extends StatefulWidget {
  final String? titlename;
  final String? noticetitleing;

  ProgramminContest({super.key, this.titlename, this.noticetitleing});

  @override
  State<ProgramminContest> createState() => _ProgramminContestState();
}

class _ProgramminContestState extends State<ProgramminContest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgrammingViewPage(
        titlename: widget.titlename,
        noticetitleing: widget.noticetitleing,
      ),
    );
  }
}

class ProgrammingViewPage extends StatelessWidget {
  final String? titlename;
  final String? noticetitleing;

  const ProgrammingViewPage({super.key, this.titlename, this.noticetitleing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        title: Text(
          'Notice',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Title',
                        style: TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titlename ?? 'No Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2,),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        noticetitleing ?? 'No Description',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
