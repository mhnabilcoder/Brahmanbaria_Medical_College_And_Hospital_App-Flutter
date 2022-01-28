import 'dart:ui';

import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width,

              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 342,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Text("Contact Information",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 1,),
                      Text("Brahmanbaria Medical College And Hospital",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 1,),
                      Text("Gathora, Brahmanbaria, Bangladesh",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 40,),
                      Container(
                        height: 232,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.call,),
                                  Text("Contact Numbers :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("+8801234098765,+8801234098765, +8801234098765, +8801234098765, +8801234098765, +8801234098765, +8801234098765,+8801234098765, +8801234098765, +8801234098765, +8801234098765,",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.mail,),
                                  Text("Mail : bmch@gmail.com ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                ],
                              ),
                            ),
                            Text("bmchospital@gmail.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black),),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.support_agent,),
                                  Text("Hotline : 16032",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 96,
              color: Colors.black87,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                    height: 0.5,
                    width: 220,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                  Text("@ BMCH Trust 2022. All rights reserved.",style: TextStyle(fontSize: 12 ,color: Colors.grey.shade500),),
                ],
              ),
            ),)
        ],

      ),
    );
  }
}
