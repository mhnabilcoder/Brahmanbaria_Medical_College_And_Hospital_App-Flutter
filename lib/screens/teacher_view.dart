import 'dart:ui';
import 'package:bmcah/models/weblink_model.dart';
import 'package:bmcah/repositories/teacher_repo.dart';
import 'package:bmcah/repositories/weblink_repo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as Url_Launcher;

class TeacherView extends StatefulWidget {
  @override
  State<TeacherView> createState() => _TeacherViewState();
}

class _TeacherViewState extends State<TeacherView> {
  List<WeblinkModel> webList = [];
  @override
  void initState() {
    super.initState();
    WeblinkRepo.getWeblinks().then((value) {
      setState(() {
        webList.addAll(value);

      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WebLinks'),
          centerTitle: true,
        ),
        body: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Image.asset(
                            'assets/images/logo.png',
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: webList.length,
                        itemBuilder: (context, index) {
                          WeblinkModel website = webList.elementAt(index);
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Url_Launcher.launch('${website.link}');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(MediaQuery.of(context).size.width,60),
                                        primary: Colors.white70,
                                        padding: EdgeInsets.symmetric(vertical: 10.0)),
                                    child: Text(
                                      '${website.name}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black,),
                                    )),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  )
    );
          }
}
//
// Padding(
// padding: const EdgeInsets.all(4.0),
// child: Container(
// height: 60,
// color: Colors.black26,
// child: ListTile(
// onTap: () {
// Url_Launcher.launch('${website.link}');
// },
// title: Text('${website.name}',style: TextStyle(color:Colors.white ,fontWeight: FontWeight.w500,fontSize: 20,shadows: [
// Shadow(
// offset: Offset(1.0, 1.0),
// blurRadius: 3.0,
// color: Color.fromARGB(200, 0, 0, 0),
// ),
//
// ]),),
// ),
// ),
// );