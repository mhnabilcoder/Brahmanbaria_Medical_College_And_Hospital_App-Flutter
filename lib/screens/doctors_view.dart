import 'dart:ui';

import 'package:bmcah/models/health_package_model.dart';
import 'package:bmcah/repositories/health_package_repo.dart';
import 'package:flutter/material.dart';

class HealthPackage extends StatefulWidget {

  @override
  State<HealthPackage> createState() => _HealthPackageState();
}

class _HealthPackageState extends State<HealthPackage> {
  final List<HealthPackageModel> healList=[];
  @override
  void initState() {
    super.initState();
    HealthPackageRepo.getPackageList().then((value) {
      setState(() {
        healList.addAll(value);
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Health Package'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Container(
            //   child: ImageFiltered(
            //     imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            //     child: Image.asset(
            //       'assets/images/logo.png',
            //       width: MediaQuery.of(context).size.width,
            //
            //     ),
            //   ),
            // ),

            ListView.builder(
              itemCount: healList.length,
              itemBuilder: (context, index) {

                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      ListTile(
                        isThreeLine: true,
                        tileColor: Colors.black12,
                        title: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            '${healList.elementAt(index).name}',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),

                        subtitle: Text(
                          "Price: ${healList.elementAt(index).price} \n "
                              "details: ${healList.elementAt(index).detail} "
                        ),
                        onTap: () async {
                          // List<HealthPackageModel> doctors = await HealthPackageRepo.getDoctorList();
                          // print(doctors.length);
                          // print(doctors[0].name);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
