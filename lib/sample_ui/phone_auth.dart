import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/component/btn_txt.dart';
import 'package:flutter_application_spacex/component/text_component.dart';
import 'package:flutter_application_spacex/sample_ui/home_screen.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

import '../component/button.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login2.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: TextComponents(
                      title: "Code Verfication",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontColor: AppColors.btnColor,
                    )),
                Center(
                  child: Container(
                    height: 35.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.btnColorTrans,
                        border: Border.all(
                          color: AppColors.boxBorderColor,
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextComponents(
                                  title:
                                      "Enter your digital code to be continue",
                                  fontColor: AppColors.btnColor,
                                  fontSize: 15)),
                          SizedBox(
                            height: 3.h,
                          ),
                          Center(
                            child: OTPTextField(
                              length: 6,
                              width: 90.h,
                              fieldWidth: 5.h,
                              otpFieldStyle: OtpFieldStyle(
                                backgroundColor: const Color(0xff1d1d1d),
                                borderColor: AppColors.btnColor,
                              ),
                              style: const TextStyle(fontSize: 17),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.underline,
                              onCompleted: (pin) {},
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: MainButton(
                                title: 'Submit',
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                },
                                width: 80.w,
                                fontColor: AppColors.btnColor,
                                height: 7.h,
                                bgColor: AppColors.btnColorTrans),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: ButtonText(title: "Resend"))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
