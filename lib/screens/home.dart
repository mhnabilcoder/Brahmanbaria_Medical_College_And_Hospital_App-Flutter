import 'dart:ui';

import 'package:bmcah/config/routes.dart';
import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/repositories/teacher_repo.dart';
import '../screens/global_widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1565C0),
        title: Text('HomePage'),
        centerTitle: true,
        actions: [
          CircleAvatar(backgroundColor: Colors.orange,),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Department',
                          color: Colors.black12,
                          iconData: Icons.description_outlined,
                          onTab: () {
                            Navigator.pushNamed(context, AppConstant.deptPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Health Package',
                          color: Colors.black12,
                          iconData: Icons.account_balance_wallet_outlined,
                          onTab: () {
                            Navigator.pushNamed(context, AppConstant.doctorPage);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: ' Web Page',
                          color: Colors.black12,
                          iconData: Icons.people_alt_outlined,
                          onTab: () {
                            Navigator.pushNamed(
                                context, AppConstant.academicPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Investigation',
                          color: Colors.black12,
                          iconData: Icons.settings_outlined,
                          onTab: () {
                            Navigator.pushNamed(context, AppConstant.investPage);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Contact',
                          color: Colors.black12,
                          iconData: Icons.call,
                          onTab: () {
                            Navigator.pushNamed(context, AppConstant.userPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Weblink',
                          color: Colors.black12,
                          iconData: Icons.link_sharp,
                          onTab: () {
                            Navigator.pushNamed(context, AppConstant.teacherPage);
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
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
      ),
    );
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 160.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(4.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: Icon(
                iconData,
                size: 50.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              '$name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
