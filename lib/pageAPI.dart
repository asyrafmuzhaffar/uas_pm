// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatelessWidget {
  ApiPage({super.key});

  List<dynamic> user = []; //di tampung kemari

  Future getItems() async {//fungsi untuk pengambilan API
    var response = await http.get(Uri.https('indodax.com','/api/pairs')); // https://indodax.com/api/pairs
    
    var jsonData = jsonDecode(response.body);

    user = jsonData;
    print(user.length);
    return jsonData;
  }

  int plusOne(int x){
    int hasil = x +1;
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 43, 58),
      body: FutureBuilder(
        future: getItems(), 
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              Text("Perbandingan Crypto Saat Ini ", style: GoogleFonts.ptSans(
                               color: Colors.white, 
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            ],
                          ),
                          SizedBox(height: 30,),
                          //container di buat dalam perulangan
                          for(int i = 0; i < user.length; i++)
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 1,
                                      spreadRadius: 1
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15), color: Color.fromARGB(110, 94, 210, 98)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        
                                        SizedBox(width: 15,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Base Currency : ", style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.bold),),
                                            Text(user[i]['base_currency'], style: GoogleFonts.ptSans(color: Colors.black, fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Traded Currency : ", style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.bold),),
                                            Text(user[i]['traded_currency'], style: GoogleFonts.ptSans(color: Color.fromRGBO(126, 227, 129, 1), fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        
                                        SizedBox(width: 15,),
                                        Text(user[i]['trade_min_base_currency'].toString(), style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.bold),),
                                        Text(user[i]['trade_min_traded_currency'].toString(), style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    
                                    
                                  ]),
                                ),
                              ),
                              SizedBox(height: 15,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Color.fromARGB(255, 27, 43, 58),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical : 5.0, horizontal: 25),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Container(
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color:Color.fromRGBO(26, 106, 29, 1), ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical : 8.0, horizontal: 6),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8,),
                                    Icon(Icons.arrow_back_ios, color: Colors.white,),
                                  ],
                                ),
                              )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),),
    );
  }
}