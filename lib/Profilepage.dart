import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project_jee/Assignedleave.dart';
import 'package:project_jee/Loginpage.dart';
import 'package:project_jee/MyPage.dart';
import 'package:project_jee/Mydairy.dart';
import 'package:project_jee/Noticeprogcon.dart';
import 'package:project_jee/api.dart';
import 'package:project_jee/leaveapply.dart';
import 'package:project_jee/profilerespo.dart';
import 'package:project_jee/sharedep.dart';
import 'package:project_jee/staffdirctpage.dart';
import 'package:project_jee/subjectpage.dart';
import 'package:project_jee/timetablerport.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'profilerespo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(tabIndex: 0),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  final int tabIndex;
  const MyProfilePage({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String fname = " ";
  String lname = " ";
  String mname = " ";
  String regnum = " ";
  String cls = " ";
  String dbirth = "";
  String divi = "";
  String pname = " ";
  String profileimaageUrl = "";
  String profileImage = "";
  String ParentProfileImg = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('jhaahcdhadkj');
    ProfilePagedet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'JEET MEET',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (cntx) => AlertDialog(
                        title: Text("checkk"),
                        content: Text("you have raised a checkk"),
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.of(cntx).pop();
                          }, child: Text("click"))
                        ],
                      ));
            },
          ),
        ],
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGf2H8_Jncwd1n-cvr1ZB-xjFGeqSZGmBJbg&s'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        fname,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.dashboard_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                leading: Stack(
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Positioned(
                      right: -8,
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                title: Text(
                  'Personal',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_drop_down_sharp),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  side: BorderSide.none,
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: ListTile(
                      title: Text('My Profile'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: ListTile(
                      title: Text('My Diaries'),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyDiaries())),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: ListTile(
                      title: Text('Staff Directory'),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StaffDirectoryPage())),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: ListTile(
                      title: Text('Calendar'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: ExpansionTile(
                      title: Text('Leave Application'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide.none,
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: ListTile(
                            title: Text('Assigned Leave'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => leaveapply(
                                            selectedpage: 0,
                                          )));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: ListTile(
                            title: Text('Leave Apply'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => leaveapply(
                                            selectedpage: 1,
                                          )));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ExpansionTile(
              leading: const Icon(
                Icons.school,
                color: Colors.black,
              ),
              title: const Text(
                'Academic',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_drop_down_sharp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide.none,
              ),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Assignment'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Subject'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubjectPage()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Time Table'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeTableReport()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Attendance'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Events'),
                  ),
                ),
              ],
              // onTap: () {
              //   Navigator.pop(context);
              // },
            ),
            ExpansionTile(
              leading: const Icon(
                Icons.local_library,
                color: Colors.black,
              ),
              title: const Text(
                'Library',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_drop_down_sharp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide.none,
              ),
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Request Books'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: ListTile(
                    title: Text('Issued Books'),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(
                Icons.assessment_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Mock Test',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_drop_down_sharp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide.none,
              ),
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    title: Text('Test Scheduled'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    title: Text('Test Result'),
                  ),
                )
              ],
            ),
            ExpansionTile(
              leading: const Icon(
                Icons.assignment,
                color: Colors.black,
              ),
              title: const Text(
                'Exam',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_drop_down_sharp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide.none,
              ),
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    title: Text('Exam Schedule'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    title: Text('Attend Exam'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    title: Text('Exam Result'),
                  ),
                )
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.video_call_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Online Class',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (cnt) => AlertDialog(
                          content: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 200,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Are you sure want to Logout?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              GetLogoutdata();
                                              Navigator.of(cnt).pop();
                                            });
                                          },
                                          child: Text(
                                            'Yes',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.redAccent)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                           Navigator.of(cnt).pop();
                                          },
                                          child: Text(
                                            'No',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.blue)),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 480,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 5,
                  child: Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fname,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Reg No: ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            regnum,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Class ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    cls,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Roll No: ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    regnum,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.grey,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Division ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    divi,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'DOB: ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    dbirth,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 320,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.redAccent, width: 2),
                          ),
                          child: const CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o='),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          pname,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Parent',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent, width: 2),
                      ),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGf2H8_Jncwd1n-cvr1ZB-xjFGeqSZGmBJbg&s'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Text(
                        'Notice',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Programming Contest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '''The international collegiate Programming contest 
is an algorith programming contest for college 
stdents.Team of three,representing their university,
work to slove the most real-world problems,fostering
collabration ,creativity, innovation ,and the ability 
to perform under pressure .Through traning and 
competiotion ,teams challengs each others to raise
the bar on the possible .quite simply,it is the oldest ,
largest ,and most prestigious programming contest in the world """,
    """PTA addresses issues that are important to parents and 
    public school administratos. We fight for fouonding ,
    qualitie teachers,and capabilities  for school to thrive.
    If your school or district does not have a PTA.now is 
    the time .Membership is open to everyone .Your PTA is 
    autonomus but supported by a nation structure .it 
    sets its own dues''',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProgramminContest()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Parents Meeting',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '''PTA addresses issues that are important to parents 
and public school administratos. We fight for fouonding ,
qualitie teachers,and capabilities  for school to thrive.
If your school or district does not have a PTA.now is 
the time .Membership is open to everyone .Your PTA is 
autonomus but supported by a nation structure .it 
sets its own dues''',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProgramminContest()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'College Day',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '''
The annual college day celebration is  organised by 
the management .student with great intres and 
enthusiasam .The day is celebrated during the firsthalf
of the acadamic session. It provides an opportunity to 
assess the acheivements of the college.The students 
are actively associated in on the segment of the 
programme. Rather , the manage all the ativities by 
themselves .As this day falls right next to the sports day 
celebration,the enegry and the spirit of the studnent 
always stays hi''',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProgramminContest()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'College Election',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '''
The are many elected roles availabale, with some 
requiring greater involvement than other.While
societies and sports clubs host voluntary elected 
positions to run alongside your stidies , the students'
union offers numerous paid .full-time sabbatical roles 
such as president ,vice president,education officer 
and welfare office -that can be held for one or two 
years ''',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProgramminContest()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ProfilePagedet() async {
    print("hhaiiiiiiiiiiiiiiiiiiiiiiiii");
    print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhiiiiiiiiiiiiiiiiiiiiiii");
    final result = await ApiClass().profileuserapi();
    print("okkkkkkkkkkkkkkkkkkkkkk");
    setState(() {
      fname = result!.data.first.firstName +
          " " +
          result.data.first.middleName +
          " " +
          result.data.first.lastName;

      regnum = result.data.first.regNumber;
      cls = result.data.first.classname.name;

      divi = result.data.first.divisions.name;
      pname = result.data.first.parents.firstName +
          " " +
          result.data.first.parents.lastName;
      dbirth = result.data.first.dob;

      // profileimaageUrl = result.data.first.profileImageUrl;
      // profileImage = result.student.profileImage;
      // ParentProfileImg = result.student.parents.imageUrl;
      print(
          "qweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee$profileimaageUrl");
      savenameData(fname);
      savepicData(profileimaageUrl);
      saveparentpic(ParentProfileImg);
    });
  }

  void GetLogoutdata() async {
    final respo = await ApiClass().LogOutApi();
    setState(() {
      if (respo != null) {
        if (respo.status == 1) {
          showSuccessMessage('Successfully Logut');
          pause();
        }
      } else {
        showErrorMessage('Logout Failed');
      }
    });
  }

  void showSuccessMessage(String msg) {
    MotionToast.success(
      description: Text(msg),
      position: MotionToastPosition.top,
    ).show(context);
  }

  void showErrorMessage(String msg) {
    MotionToast.error(description: Text(msg), position: MotionToastPosition.top)
        .show(context);
  }

  pause() {
    return Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }
}
