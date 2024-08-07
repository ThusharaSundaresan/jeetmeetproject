
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_jee/Profilepage.dart';
import 'package:project_jee/forgot.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:project_jee/sharedep.dart';
import 'api.dart';

      

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var  _emailcontroller = TextEditingController();
      var  _passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o="),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 248, 25, 9),
                          fontSize: 40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(width: 10),
                              Flexible(
                                child: TextFormField(
                                  controller: _emailcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            color: Colors.white,
                            child: Text(
                              'Username',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(width: 10),
                              Flexible(
                                child: TextFormField(
                                  obscureText: true,
                                  controller: _passcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            color: Colors.white,
                            child: Text(
                              'Password',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        loginuser();
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> ForgotPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("object--------------");
                        loginuser();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
   
   void loginuser() async {
    print("kkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
    final _email= _emailcontroller.text;
    final _password=_passcontroller.text;

    if (_email.isEmpty) {
      showErrorMessage('Please enter  valid email id');
      print("nnnnnnn");
    } else if (_password.isEmpty) {
      showErrorMessage('Please enter your password');
    }else{
      final _formData=
          FormData.fromMap({'username':_email,'password':_password});
      final _result= await ApiClass().loginuserapi(_formData);

      if (_result!=null) {

        if (_result.status ==1) {
          showSuccessMessage("sucsess");
          savevingData(_result.message);

          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
        }
        else{
          showErrorMessage("erorr");
        }
      }
    }
   }
   void showErrorMessage(String message){
    MotionToast.error(
      title: const Text('Error',
       style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      description: Text(message),
      position: MotionToastPosition.top,
      width: 100,
      height: 200,
     
      barrierColor: Colors.black.withOpacity(0.3),).show(context);
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
