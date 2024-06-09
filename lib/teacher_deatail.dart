import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TeacherDeatail extends StatefulWidget {
  const TeacherDeatail({super.key});

  @override
  State<TeacherDeatail> createState() => _TeacherDeatailState();
}

class _TeacherDeatailState extends State<TeacherDeatail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ABs Learning Hub",
          style: TextStyle(
              color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade200),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abin",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 200,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "Empowerment of students for their all-around development through education is our cherished motto. ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
              Spacer(),
              CircleAvatar(
                radius:
                40.0, // This radius can be adjusted or removed as needed
                backgroundImage:
                NetworkImage("https://abslearninghub.vercel.app/images/abin.jpg",
                ),
                // AssetImage("Assets/images/pro.png"),
                backgroundColor: Colors.transparent,
              ),
            SizedBox(width: 30,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.left,
                  "Upcomming Classes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
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
