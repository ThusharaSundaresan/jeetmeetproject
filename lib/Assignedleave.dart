
import 'package:flutter/material.dart';

class AssignedLeave extends StatelessWidget {
   final int tabIndex;
  const AssignedLeave({Key? key,required this.tabIndex}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignedpage(tabIndex: tabIndex),
    );
  }
}

class Assignedpage extends StatefulWidget {
   final int tabIndex;
  const Assignedpage({Key? key,required this.tabIndex}): super(key: key);

  @override
  State<Assignedpage> createState() => _AssignedpageState();
}

class _AssignedpageState extends State<Assignedpage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  //int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _tabController.index = widget.tabIndex;
  }

  void _handleTabSelection() {
    setState(() {
     // _currentTabIndex = _tabController.index;
    });
    
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _tabController.index == 0 ? 'Assigned Leave' : 'Leave',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: _tabController.index == 0
            ? [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ]
            : [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                'Assigned Leave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Leave Apply',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
          indicator: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.white, width: 6.0))),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AssignedLeaveContent(tabIndex: 0),
          LeaveApplyContent(tabIndex: 1),
        ],
      ),
    );
  }
}

class AssignedLeaveContent extends StatefulWidget {
   final int tabIndex;

  const AssignedLeaveContent({Key? key, required this.tabIndex}) : super(key: key);
  @override
  State<AssignedLeaveContent> createState() => _AssignedLeaveContentState();
}

class _AssignedLeaveContentState extends State<AssignedLeaveContent> {
  
  @override
  Widget build(BuildContext context) {
    if (widget.tabIndex==0) {
    
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
        Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Anuual Days'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('15 Days'),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 16),
        Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Onam'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5 Days'),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 16),
        Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Casual'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('8 Days'),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    ));}
    else{
      return SizedBox();
    }
  }
}



class LeaveApplyContent extends StatelessWidget {
    final int tabIndex;

   LeaveApplyContent({required this.tabIndex});
  @override
  Widget build(BuildContext context) {
     if (tabIndex == 1) {
      
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 241, 238, 238),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date: 23-10-2024',
                    style: TextStyle(
                      color: Color.fromARGB(248, 117, 114, 114),
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Status:',
                        style: TextStyle(
                          color: Color.fromARGB(248, 117, 114, 114),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 6),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Pending',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 320,
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Applicant Name',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(248, 117, 114, 114),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Kiran R V',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(7, 12, 12, 0.592),
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Schedule',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(248, 117, 114, 114),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: const [
                              Text('2023-april-02'),
                              Text('-'),
                              Text('2023-april-23'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Reason',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(248, 117, 114, 114),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'for api testing',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(248, 117, 114, 114),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Attachment',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(248, 117, 114, 114),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(103, 60, 59, 59),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text('            '),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           Divider(
                      height: 3,
                      thickness: 1,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                    ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      width: 1,
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(248, 117, 114, 114),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Casual',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(7, 12, 12, 0.592),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Days',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(248, 117, 114, 114),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(7, 12, 12, 0.592),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date: 23-10-2024',
                    style: TextStyle(
                      color: Color.fromARGB(248, 117, 114, 114),
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Status:',
                        style: TextStyle(
                          color: Color.fromARGB(248, 117, 114, 114),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 6),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Pending',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16,),
             Container(
  height: 100,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Applicant Name',
            style: TextStyle(
              color: Color.fromARGB(248, 117, 114, 114),
              fontSize: 15,
            ),
          ),
          Text(
            'Kiran',
            style: TextStyle(
              color: Color.fromARGB(248, 117, 114, 114),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Container(
        height: double.infinity,
        width: 1, 
        color: Colors.grey, 
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          Text(
            ' Category',
            style: TextStyle(
              color: Color.fromARGB(248, 117, 114, 114),
              fontSize: 18,
            ),
          ),

          Text(
            'Casual',
            style: TextStyle(
              color: Color.fromARGB(248, 117, 114, 114),
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    ],
  ),
),
SizedBox(height: 16,),
Container(
  height: 50,
  width: double.infinity,
  child: Row(
    
    mainAxisAlignment: MainAxisAlignment.start, 
    mainAxisSize: MainAxisSize.min, 
    crossAxisAlignment: CrossAxisAlignment.center, 
    verticalDirection: VerticalDirection.down,
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context,
             builder: (BuildContext context){
              return AlertDialog(
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text('Leave Application'),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop(); 
                        },
                      ),
                    ],
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'selected value',
                          ),
                        
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'starting date',
                             suffixIcon: IconButton(onPressed: (){},
                              icon:Icon(Icons.calendar_today_outlined))),
                             
                        ),
                         SizedBox(height: 10,),
                         TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'starting time',
                             suffixIcon: Icon(
                              Icons.timer_outlined))
                        ),
                         SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'end date',
                             suffixIcon: Icon(Icons.calendar_today_outlined))
                        ),
                         SizedBox(height: 10,),
                         TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'end time',
                             suffixIcon: Icon(
                              Icons.timer_outlined))
                        ),
                          SizedBox(height: 10,),
                        
                        TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'end date',
                              suffixIcon: Icon(Icons.calendar_today_outlined))
                        ),
                         SizedBox(height: 10,),
                        
                      
                         TextField(
                          maxLines: 10,
                         decoration: InputDecoration(
                           border: OutlineInputBorder(),
                         hintText: 'Reason',
                                  ),
                                ),
                                SizedBox(height: 10,),
                                  TextField(
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'Attachment',
                             suffixIcon: Icon(Icons.attach_file_sharp))
                        ),
                      
                         
                      ],
                    ),
                  ),
                  actions: [ 
                    Center(
                      child: ElevatedButton(onPressed: (){
                      
                      },
                       style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                       child: Text('Submit')),
                    )
                  ],
              );
             });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          child: Text(
            'Add a Leave Application',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ],
  ),
)
            ]
          ),
        ),
      ),
    );}
    else{
      return SizedBox();
    }
  }
}


