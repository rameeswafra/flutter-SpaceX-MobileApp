import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/sample_ui/onboarding_components.dart';

// ignore: must_be_immutable
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnBoardingComponents(
            //image: Image.asset("assets/images/intro1.png"),
            image: "assets/images/intro1.png",
            title: "Rockets and Capsules",
            description:
                "The journey of the reusable rocketsand the innovativeness discoveriesresults the Falcon rockets and Dragoncapsules.",
            noOfScreens: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 0,
          ),
          OnBoardingComponents(
            // image: Image.asset("assets/images/intro2.png"),
            image: "assets/images/intro2.png",
            title: "History of launches",
            description:
                "SpaceX has historical number of launches so far to explore the spaceand to develop a network aroundthe world..",
            noOfScreens: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 1,
          ),
          OnBoardingComponents(
            // image: Image.asset("assets/images/intro3.png"),
            image: "assets/images/intro3.png",
            title: "Missions to the future",
            description:
                "It's not just the space.Fly to the moon, fly to the marsBeyond that, start journey for thespace explorations.",
            noOfScreens: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 2,
          )
        ],
      ),
    );
  }

//change next onboarding function
  void changeScreen(int nextScreenNo) {
    //pagecontroller -->screen
    controller.animateToPage(nextScreenNo,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
