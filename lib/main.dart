import 'package:bmcah/config/routes.dart';
import 'package:bmcah/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF1565C0),
        ),
        primarySwatch: Colors.blueGrey,
      ),
      // home:SignupPage() ,
      initialRoute: AppRoutes.myInitRoute,
      routes: AppRoutes.routes,
    );
  }
}
