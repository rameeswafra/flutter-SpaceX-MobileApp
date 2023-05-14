import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/sample_ui/phone_auth.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:sizer/sizer.dart';
import '../component/button.dart';
import '../component/text_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/login2.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 3.h),
              child: const  TextComponents(title: "LOGIN",fontColor: AppColors.txtColor,fontSize: 28,fontWeight: FontWeight.bold),
              
              
            ),
            Padding(
              padding: EdgeInsets.all(1.h),
              child: Center(
                child: Container(
                  height: 45.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.btnColorTrans,
                      border: Border.all(
                        color: AppColors.boxBorderColor,
                        width: 1,
                      )),
                  child: Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: const TextComponents(
                              title: "One steps to Go!!! ",
                              fontColor: AppColors.btnColor,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Center(
                            child: SizedBox(
                              height: 6.h,
                              width: 80.w,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Phone Number ",
                                      hintStyle: const TextStyle(
                                          fontSize: 15.0,
                                          color: AppColors.btnColor),
                                      labelStyle: const TextStyle(fontSize: 17),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColors.btnColorTrans),
                                        borderRadius: BorderRadius.circular(12),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Center(
                            child: Card(
                              child: MainButton(
                                title: "Continue",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PhoneAuth()),
                                  );
                                },
                                bgColor: AppColors.btnColor,
                                width: 80.w,
                                height: 7.h,
                                fontColor: AppColors.txtColor,
                              ),
                            ),
                          ),
                          const Align(
                              alignment: Alignment.center,
                              child: TextComponents(
                                title: "or",
                                fontColor: AppColors.btnColor,
                                fontSize: 25,
                              )),
                          Center(
                            child: SizedBox(
                              width: 80.w,
                              height: 7.h,
                              child: Card(
                                color: AppColors.btnColorTrans,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image.asset(
                                        "assets/images/google.png",
                                        height: 6.h,
                                        width: 6.w,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      const TextComponents(
                                          title: "Continue with google",
                                          fontColor: AppColors.btnColor,
                                          fontSize: 15)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
