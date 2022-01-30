import 'dart:ui';

import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/models/department_model.dart';
import 'package:bmcah/repositories/department_repo.dart';
import '../screens/global_widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class DepartmentView extends StatefulWidget {
  @override
  State<DepartmentView> createState() => _DepartmentViewState();
}

class _DepartmentViewState extends State<DepartmentView> {
  List<Department> depList = [];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    DepartmentRepo.getDepartmentList().then((value) {
      setState(() {
        print('ekhane ase');
        print(value);
        depList.addAll(value);
        _isLoading = false;
        print(depList[0].name);
      });
    }).onError((error, stackTrace) {
      print(error);
      print('object');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departments'),
        centerTitle: true,
      ),
      body: _isLoading? CircularProgressIndicator(): Stack(
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
            itemCount: depList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Department bngDept = depList[index];
                          Navigator.pushNamed(context, AppConstant.deptDetailPage,
                              arguments: bngDept);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width,60),
                            primary: Colors.white70,
                            padding: EdgeInsets.symmetric(vertical: 10.0)),
                        child: Text(
                          '${depList.elementAt(index).name}',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),
                        )),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
