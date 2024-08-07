import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeForgot(),
    );
  }
}

class HomeForgot extends StatefulWidget {
  const HomeForgot({super.key});

  @override
  State<HomeForgot> createState() => _HomeForgotState();
}

class _HomeForgotState extends State<HomeForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,height: 1.2),
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Email',
                                ),
                
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                
                },
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), 
                    ),
                ),
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 30),)),
              ),
             

            ],
          ),
        ),
      ),
    );
  }
}
