import 'dart:ui';

import 'package:bmcah/models/department_model.dart';
import 'package:bmcah/models/doctor_model.dart';
import 'package:flutter/material.dart';

class DepartmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Department arg = ModalRoute.of(context)!.settings.arguments as Department;
    return Scaffold(
      appBar: AppBar(
        title: Text('${arg.name}'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          ListView.builder(
            itemCount: arg.doctorList!.length,
            itemBuilder: (context, index) {
              DoctorModel dector=arg.doctorList!.elementAt(index);
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(MediaQuery.of(context).size.width,60),
                            primary: Colors.white70,
                            padding: EdgeInsets.symmetric(vertical: 10.0)),
                        child: Text(
                          '${dector.name}',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),
                        )),
                  ),
                ],
              );
          },),
        ],
      )
    );
  }
}
