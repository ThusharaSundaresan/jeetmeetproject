import 'package:flutter/material.dart';
import 'package:project_jee/Profilepage.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: SubjectPageContent(),
    );
  }
}
class SubjectPageContent extends StatefulWidget {
  const SubjectPageContent({super.key});

  @override
  State<SubjectPageContent> createState() => _SubjectPageContentState();
}

class _SubjectPageContentState extends State<SubjectPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        },
         icon: Icon(Icons.arrow_back,color: Colors.white38,)),
        title: Text('Subject',style:TextStyle(color: Colors.white,
        fontSize: 20,fontWeight: FontWeight.bold) ,),
       backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.message,color: Colors.white,))
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 241, 238, 238),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                SizedBox(height: 16,),
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
                        padding: EdgeInsets.all(16.0),
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
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Class :4A',
                        style: TextStyle(
                          color: Color.fromARGB(248, 117, 114, 114),
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Subject Code:',
                            style: TextStyle(
                              color: Color.fromARGB(248, 117, 114, 114),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '101',
                            style: TextStyle(
                              color: Color.fromARGB(248, 117, 114, 114),
                              fontSize: 15,
                            ),
                          ),
        
                        ],
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 16),
                 Container(
                  height: 275,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [ 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                          Text(
                              'Subject Name',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mathematics',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(45, 52, 52, 0.588),
                                fontSize: 18,
                              ),
                            ),
                             SizedBox(height: 10),
                            Text(
                              'Teacher',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                              ),
                            ),
                              SizedBox(height: 5),
                            Text(
                              'Anil vk,Gerorge,Sam',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(45, 52, 52, 0.588),
                                fontSize: 18,
                              ),
                            ),
                              SizedBox(height: 10),
                             RichText(
              text: TextSpan(
                text: 'Subject Author: ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Pythagorous',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 5),
                             RichText(
              text: TextSpan(
                text: 'Pass Mark ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '15',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 5),
                             RichText(
              text: TextSpan(
                text: 'Final Mark',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '50',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
                            Text(
                              'Note:',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                        ],
                      )
                    ],
                  )
                 ),
                  SizedBox(height: 16),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Class :4A',
                        style: TextStyle(
                          color: Color.fromARGB(248, 117, 114, 114),
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Subject Code:',
                            style: TextStyle(
                              color: Color.fromARGB(248, 117, 114, 114),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '121',
                            style: TextStyle(
                              color: Color.fromARGB(248, 117, 114, 114),
                              fontSize: 15,
                            ),
                          ),
        
                        ],
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 16),
                 Container(
                  height: 275,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [ 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                          Text(
                              'Subject Name',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(45, 52, 52, 0.588),
                                fontSize: 18,
                              ),
                            ),
                             SizedBox(height: 10),
                            Text(
                              'Teacher',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                              ),
                            ),
                              SizedBox(height: 5),
                            Text(
                              'Anil vk',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(45, 52, 52, 0.588),
                                fontSize: 18,
                              ),
                            ),
                              SizedBox(height: 10),
                             RichText(
              text: TextSpan(
                text: 'Subject Author: ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Issac Newton',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 5),
                             RichText(
              text: TextSpan(
                text: 'Pass Mark ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '24',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 5),
                             RichText(
              text: TextSpan(
                text: 'Final Mark',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(248, 117, 114, 114),
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '80',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(45, 52, 52, 0.588),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
                            Text(
                              'Note:',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(248, 117, 114, 114),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                        ],
                      )
                    ],
                  )
                 ),
                 
              ],
            ),
          
        ),
      ),
    );
  }
}