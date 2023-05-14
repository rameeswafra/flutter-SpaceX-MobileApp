import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/sample_ui/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SpaceSplash extends StatefulWidget {
  const SpaceSplash({super.key});

  @override
  State<SpaceSplash> createState() => _SpaceSplashState();
}

class _SpaceSplashState extends State<SpaceSplash> {
  @override
  void initState() {
    super.initState();
    navigatetoonboard();
  }

  navigatetoonboard() async {
    await Future.delayed(const Duration(milliseconds: 8000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash 1.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(" Space X ",
                  style: GoogleFonts.orbitron(
                    color: Colors.white,
                    fontSize: 28,
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
