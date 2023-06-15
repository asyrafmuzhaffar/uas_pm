// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uas_pm/pageAPI.dart';
import 'package:uas_pm/second_page.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 43, 58),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('image/Gambar.png'),
              SizedBox(
                height: 25,
              ),
              Text('Trade anytime anywhere',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18
              ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white
                    ),
                    child: SizedBox(
                      height:8,
                      width: 8, ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey
                    ),
                    child: SizedBox(
                      height:8,
                      width: 8, ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey
                    ),
                    child: SizedBox(
                      height:8,
                      width: 8, ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                 onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>second_page()));
                    },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(110, 94, 210, 98),
                        spreadRadius: 0,
                        blurRadius: 30
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(94, 210, 98, 1)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 50),
                    child: Text('Next',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                 onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ApiPage()));
                    },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(110, 94, 210, 98),
                        spreadRadius: 0,
                        blurRadius: 30
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(94, 210, 98, 1)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 50),
                    child: Text('Check Crypto Currencies',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),),
                  ),
                ),
              )
              ]
            ),
        ),
      ),
    );
  }
}
