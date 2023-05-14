import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/component/fail.dart';
import 'package:flutter_application_spacex/component/success.dart';
import 'package:flutter_application_spacex/component/text_component.dart';
import 'package:flutter_application_spacex/sample_ui/home_data.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class HomeUI extends StatefulWidget {
  final HomeData homeData;

  const HomeUI({super.key, required this.homeData});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  bool isSuccess = false;
  @override
  void initState() {
    super.initState();
    isSuccess = widget.homeData.isSuccess;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 20.w,
        height: 20.h,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.borderBox,
            border: Border.all(
              color: AppColors.boxBorderColor,
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 8),
              TextComponents(
                title: widget.homeData.missionId,
                fontColor: AppColors.btnColor,
                fontSize: 18,
              ),

              const SizedBox(height: 10),
              ///////////////////////////////////////////////
              /*  TextComponents(
                title: widget.homeData.missionDetails,
                fontColor: AppColors.btnColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),*/
              Text(
                widget.homeData.missionDetails,
                style: const TextStyle(color: AppColors.btnColor),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: TextComponents(
                    title: DateFormat('yyyy-MM-dd  kk:mm')
                        .format(widget.homeData.date),
                    fontColor: AppColors.btnColor,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
