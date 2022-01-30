import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/screens/aboutUs.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Wrap(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.description_outlined),
            title: Text('Department'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.deptPage);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet_outlined,
            ),
            title: Text('Health Package'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.doctorPage);
            },
          ),
          ListTile(
            leading: Icon(Icons.web_sharp),
            title: Text('Web Page'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.academicPage);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Investigation'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.investPage);
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.userPage);

            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Weblink'),
            onTap: () {
              Navigator.pushNamed(context, AppConstant.teacherPage);

            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));

            },
          ),
        ],
      ),
    );
  }
}
