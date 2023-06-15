import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  const second_page({super.key});

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 43, 58),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 25, 32, 45)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 27, 43, 58)),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text('Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal)),
                Text('Registered with Mobile',
                    style: TextStyle(
                        color: Color.fromARGB(100, 85, 195, 153),
                        fontSize: 12,
                        fontWeight: FontWeight.normal)),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 25, 32, 45)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                      child: Text('Please enter Email',style: 
                      TextStyle(color: Colors.white,
                      fontSize: 11),),
                    )
                  ],),
            ),
            SizedBox(
              height: 15,
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal)),
                
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 25, 32, 45)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Please enter Password',style: 
                      TextStyle(color: Colors.white,
                      fontSize: 11),),
                      Icon(Icons.visibility_off,color: Colors.white,)
                    ],),
                  ),
            ),
            SizedBox(
              height: 35,
            ),
             Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(94, 210, 98, 1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Sign Up',style: 
                      TextStyle(color: Colors.black,
                      fontSize: 11),),
                     
                    ],),
                  ),
            ),
            SizedBox(height: 15,),
            Text('Or Login With',style: 
                      TextStyle(color: Colors.white,
                      fontSize: 11),),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook,color: Colors.blue,),
                            SizedBox(width: 10,),
                          Text('Facebook',style: 
                          TextStyle(color: Colors.black,
                          fontSize: 11),),
                         
                        ],),
                      ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('image/G.png',width: 20,),
                            SizedBox(width: 10,),
                          Text('Google',style: 
                          TextStyle(color: Colors.black,
                          fontSize: 11),),
                         
                        ],),
                      ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
