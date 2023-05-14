import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/component/text_component.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoardingComponents extends StatelessWidget {
  const OnBoardingComponents(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.noOfScreens,
      required this.onNextPressed,
      required this.currentScreenNo});

  final String image;
  final String title;
  final String description;
  final int noOfScreens;
  final Function(int) onNextPressed;
  final int currentScreenNo;

  @override
  Widget build(BuildContext context) {
    bool isLastScreen = currentScreenNo >= noOfScreens - 1;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        color: AppColors.txtColor,
                        width: 95.w,
                        height: 42.h,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextComponents(
                                  title: title,
                                  fontColor: AppColors.btnColor,
                                  fontSize: 28,
                                )),
                            SizedBox(
                              height: 1.5.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextComponents(
                                  title: description,
                                  fontColor: AppColors.btnColor,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.h, vertical: 2.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int index = 0;
                                      index < noOfScreens;
                                      index++)
                                    createProgressDots(
                                        (index == currentScreenNo)
                                            ? true
                                            : false)
                                ],
                              ),
                            ),
                            const Spacer(),
                            Visibility(
                              visible: !isLastScreen,
                              replacement: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/login');
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 0.h),
                                      child: Container(
                                        height: 7.5.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.btnColor,
                                            border: Border.all(
                                              color: AppColors.btnColor,
                                              width: 1,
                                            )),
                                        child: const Center(
                                            child: TextComponents(
                                          title: "Lets Get Started",
                                          fontColor: AppColors.txtColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 2.h),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, '/login');
                                      },
                                      child: Text(
                                        "Skip",
                                        style: GoogleFonts.inter(
                                          color: AppColors.btnColor,
                                          fontSize: 19,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        onNextPressed(currentScreenNo + 1);
                                      },
                                      backgroundColor: AppColors.btnColor,
                                      child: const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: AppColors.txtColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget createProgressDots(bool isActiveScreen) {
    return Container(
      height: isActiveScreen ? 15 : 10,
      width: isActiveScreen ? 15 : 10,
      decoration: BoxDecoration(
        color: isActiveScreen ? AppColors.btnColor : AppColors.progressColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
