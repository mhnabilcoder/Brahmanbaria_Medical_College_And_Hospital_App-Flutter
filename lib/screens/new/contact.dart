import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Contact Information",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),


        ],
      ),
    );
  }
}
