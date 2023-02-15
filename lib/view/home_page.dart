import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task1/view/schedule_call_page.dart';
import 'package:task1/view/scheduled_training.dart';
import 'package:task1/view/share_a_file.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: 100.w,
          margin: EdgeInsets.only(top: 1.h),
          child: Column(
            children: [
              ScheduleCallPage(),
              SharedFilePage(),
              ScheduleTraining()
            ],
          ),
        ),
      ),
    );
  }
}
