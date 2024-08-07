import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project_jee/Profilepage.dart';
import 'package:project_jee/api.dart';
import 'package:project_jee/profilerespo.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyPage extends StatelessWidget {
  const MyPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
   
  String parentimgg = "";
   String Gender = "";
   String std =  " ";
   String regnum= "";
   String Division = "";
   String Rollno = " ";
   String Dob = " ";
   String PhoneNo = " ";
   String Email = " ";
   String SecondaryPhone = " ";
   String Address = " ";
   String place =" ";
   String PostalCode =" ";
   String BloodGroup= "";
   String State ="";
   String Country =" ";
   String Nationality =" ";
   String username =" ";
   String image_url= " ";
   String firstname="";
   String middlename= " ";
   String lastname = "";
   String parent = " ";
   var firstnamecontroller= TextEditingController();
   var middlenamecontroller= TextEditingController();
   var lastnamecontroller= TextEditingController();
  File? _pickedImage;

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage == null) return;
      setState(() {
        _pickedImage = File(pickedImage.path);
      });
    } catch (e) {
      print('Error picking image: $e');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Myprofile();
    LoadpImg();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message, color: Colors.white),
          )
        ],
      ),
      body: 
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            //      SizedBox(height: 100),
              Positioned(top: MediaQuery.of(context).size.height / 8.5,
                        width: MediaQuery.of(context).size.width / .83,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGf2H8_Jncwd1n-cvr1ZB-xjFGeqSZGmBJbg&s'),
                          
                        )),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$firstname",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),SizedBox(width: 5,),
                        Text( middlename,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Text(lastname,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    16.0),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    TextField(
                                                      controller: firstnamecontroller,
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              'First Name'),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    TextField(
                                                      controller: middlenamecontroller,
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              'Middle Name'),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    TextField(
                                                      controller: lastnamecontroller,
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              'Last Name'),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(8.0),
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                                                                                      EditProfilenmePost();
                                                          EditProfilenmePost();
                                                           Navigator.pop(context);

                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                              primary:
                                                                  Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10))),
                                                          child: Text(
                                                            'Submit',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit_note_outlined))
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                         Text(
                        'Reg No :',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                       SizedBox(width: 10,) ,
                      Text(Rollno,style: TextStyle(color: Colors.grey, fontSize: 15),),
                        ],
                      ),
                     
                      SizedBox(height: 20),
                      Container(
                        width: 550,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(70),
                            right: Radius.circular(70)
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(color: Colors.white,width: 4)
                                ),
                                child: CircleAvatar(
                                  radius: 40,
                                  
                                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o='),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(parent,style: TextStyle(color: Colors.black,
                                  fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text('Parent',style: TextStyle(color: Colors.black26),)],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 550,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Gender'),
                                   SizedBox(width: 150), 
                                   
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(Gender,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Class'),
                                   SizedBox(width: 160), 
                          Text(
                            ': ', 
                            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
                            ),
                          ),
                          Text(std,style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Division'),
                                   SizedBox(width: 145), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(Division,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('RollNO'),
                                   SizedBox(width: 150), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                            Text(Rollno,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)                    ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('DOB'),
                                   SizedBox(width: 165), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                           Text(Dob,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),) 
                             ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Phone'),
                                   SizedBox(width: 150), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                             Text(PhoneNo,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)                   ],
                              )
                            ],
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 550,
                        height: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Email'),
                                   SizedBox(width: 150), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
              Text(Email,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)                  ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Secondary Phone no:'),
                                   SizedBox(width: 50), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
                            ),
                          ),
                          Text(SecondaryPhone,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Address'),
                                   SizedBox(width: 133), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(Address,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Place'),
                                   SizedBox(width: 150), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(place,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Postal Code'),
                                   SizedBox(width: 107), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(PostalCode,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Blood Group'),
                                   SizedBox(width: 103), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(BloodGroup,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('State'),
                                   SizedBox(width: 150), 
                          Text(
                            ':', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(State,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Country'),
                                   SizedBox(width: 133), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                            Text(Country,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)                    ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Nationality'),
                                   SizedBox(width: 113), 
                          Text(
                            ': ', 
                            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(Nationality,style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        /*  Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: GestureDetector(
                      onTap: () => _pickImage(ImageSource.gallery),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: _pickedImage != null
                            ? FileImage(_pickedImage!) as ImageProvider<Object>?
                            : NetworkImage(
                                'https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o=',
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent, width: 2),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: GestureDetector(
                          onTap: () => _pickImage(ImageSource.gallery),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.image,
                              size: 24,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),*/
      
    );
  }
  void LoadpImg() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      parentimgg=sharedPreferences.getString("image1")?? "";

      print("ggfhggffggd$parentimgg");
    });
  }
  void Myprofile() async{
    
    final product = await ApiClass().MyProfilepageApi();
    setState(() {

     // Gender = product?.data.gender ?? 'Default Gender';
      Gender=product!.data.gender;
    // Gender=product!.data.gender;
      std=product.data.classname.name;
      Division=product.data.division.toString();
      Rollno=product.data.rollNumber.toString();
      Dob=product.data.dob;
      PhoneNo=product.data.phone.toString();
      Email=product.data.email;
      SecondaryPhone=product.data.phone2;
      Address=product.data.address;
      place=product.data.place;
      PostalCode=product.data.code;
      BloodGroup=product.data.blood;
      State=product.data.states.name;
      Country=product.data.countries.name;
      Nationality=product.data.nationality;
      username=product.data.username;
      image_url=product.data.profileImageUrl;
      firstname=product.data.firstName;
      middlename=product.data.middleName;
      lastname=product.data.lastName;
      parent=product.data.parents.firstName;

    });
  }
void EditProfilenmePost() async{
 
  final firstname  = firstnamecontroller.text;
  final middlename = middlenamecontroller.text;
  final lastname   = lastnamecontroller.text;
   if (firstname.isEmpty){
    showErrorMessage("Enter FirstName");
   }else if(middlename.isEmpty){
    showErrorMessage("Enter MiddleName");
   }else if(lastname.isEmpty){
    showErrorMessage("Enter LastName");
   } else{
    final formdata= FormData.fromMap({
      "first_name"  : firstname,
      "middle_name" : middlename,
      "last_name"   : lastname,
    });
     final result= await ApiClass().EditProfileNameApi(formdata);
     if(result !=null){
        if (result.status==1) {
          showSuccessMessage("Name changed Successfully");
          
          // ignore: use_build_context_synchronously
        }
     }
     else{
      showErrorMessage("operation Failed");

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
      dismissable: false,).show( context);
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
    ).show(context);
  }
}
