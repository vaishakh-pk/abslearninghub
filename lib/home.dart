import 'package:abslearninghub/teacher_deatail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("ABs Learning Hub", style :TextStyle(color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'HomeWork',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:120 ,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: Colors.blue            ) ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi,",style: TextStyle(color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                        ),),
                        Text("Ansab",style: TextStyle(color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius:
                        40.0, // This radius can be adjusted or removed as needed
                        backgroundImage:
                            NetworkImage("https://img.lovepik.com/element/45001/3052.png_860.png",
                            ),
                        // AssetImage("Assets/images/pro.png"),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(width: 30,)
                    // Image.network("Assets/images/pro.png",
                    // height: 30,
                    // width: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
        
              padding: const EdgeInsets.symmetric(horizontal : 12.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Todays Classess",textAlign: TextAlign.left, style :TextStyle(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TeacherDeatail()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreenAccent
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "8 A.M - 10 A.M",
                                  style :TextStyle(color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  "English",
                                  style :TextStyle(color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                          SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreenAccent
                          ),
                          child: Row(
                            children: [
                              Text(
                                "10 A.M - 1 P.M",
                                style :TextStyle(color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 30,),
                              Text(
                                "Computer Application",
                                style :TextStyle(color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
        
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreenAccent
                          ),
                          child: Row(
                            children: [
                              Text(
                                "2 P.M - 4 P.M",
                                style :TextStyle(color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 40,),
                              Text(
                                "Economics",
                                style :TextStyle(color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    )
        
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
                padding: EdgeInsets.all(10),
            child:SfCalendar(
              view: CalendarView.month,
            )
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
