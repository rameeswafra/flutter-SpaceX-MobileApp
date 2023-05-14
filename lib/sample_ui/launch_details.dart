import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/component/text_component.dart';
import 'package:flutter_application_spacex/sample_ui/home_data.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../component/fail.dart';
import '../component/success.dart';

class LaunchPage extends StatefulWidget {
  final HomeData homeData;
  //final String image;

  // ignore: use_key_in_widget_constructors
  const LaunchPage(this.homeData);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  bool isSuccess = false;
  @override
  void initState() {
    super.initState();
    isSuccess = widget.homeData.isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          color: AppColors.txtColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.homeData.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      TextComponents(
                        title: widget.homeData.missionName,
                        fontColor: AppColors.btnColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      const Spacer(),
                      Container(
                        child: isSuccess
                            ? const SuccessComponent()
                            : const FaillComponent(),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(children: [
                    TextComponents(
                        title: widget.homeData.missionId,
                        fontColor: AppColors.btnColor,
                        fontSize: 15),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextComponents(
                          title: DateFormat('yyyy-MM-dd  kk:mm')
                              .format(widget.homeData.date),
                          fontColor: AppColors.btnColor,
                          fontSize: 16),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  TextComponents(
                    title: widget.homeData.missionDetails,
                    fontColor: AppColors.btnColor,
                    fontSize: 11,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
