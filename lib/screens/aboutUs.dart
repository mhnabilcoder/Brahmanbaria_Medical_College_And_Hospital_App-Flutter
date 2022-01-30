import 'dart:ui';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
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
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("OUR HISTORY",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800,),),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("History of Brahmanbaria:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("Brahmanbaria Medical college & Hospital, Titas Gas Feild, Graveyard of Birshesta Mostofa kamal, Kosba Kollapathor Somadhi, Faruque park,  Graveyard kallashid (R) home of Ostad Alauddin Kha, Hatirpul, Home of Biplobi Ullash Datta, Gonga Sagor Meghna Bridge, Ashugonj power station, Zia Fertilizer factory, Badugor Sahi mosque, Haripur Landlord place etc. Brahmanbaria Medical is one of the reputed private medical colleges in Bangladesh. This is first medical in the district. I wish every success of this institute. May Almighty Allah be with us.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Tourist attractions:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("Brahmanbaria district is located in the eastern part of bangladesh. Once the region was a part of Samatat state. Later it was included in tripura district in 1970. The first and temporary capital of Isa Khan was at Sarail, 10 km north of Brahmanbaria Town. Swadeshi movement (1905), Peasant movement (1930) No-rent movement, War of liberation Movement (1971) etc are the remarkable chapters of the region. Brahmanbaria was promoted as a municipality in 1869. After the liberation of Bangladesh, Brahmanbaria was declared as a district in 15 February 1984.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                            ),
                            SizedBox(height: 10,),
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
