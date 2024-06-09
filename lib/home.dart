import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
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
                      Text("Hi",style: TextStyle(color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),),
                      Text("Ansab",style: TextStyle(color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                  SizedBox(width: 30),
                  // Image.asset("asset/images/profile.jpg")
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
                color: Colors.lightGreen
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Todays Classess",textAlign: TextAlign.left, style :TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),),
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
                          "8 A.M - 10 A.M",
                          style :TextStyle(color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "English",
                          style :TextStyle(color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
