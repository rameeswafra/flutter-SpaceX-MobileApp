import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/sample_ui/onboarding_screen.dart';
import 'package:flutter_application_spacex/sample_ui/spacx_login.dart';
import 'package:sizer/sizer.dart';
//import 'package:flutter_application_spacex/sample_ui/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            //primarySwatch: Colors.blue,
            ),
        //home: const SpaceSplash(),
        home: const OnBoarding(),
        routes: {
          '/login': (BuildContext context) => const LoginPage(),
          // '/homepage': (BuildContext context) => const HomePage(),
          // '/phoneauth': (BuildContext context) => const PhoneAuth(),
        },
      );
    }));
  }
}
