import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text("ABs Learning Hub", style :TextStyle(color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),),
        backgroundColor: Colors.blue,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade200
              ),
              child: Row(
                children: [
                  Column(
                    children: [

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
