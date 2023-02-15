import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScheduleCallPage extends StatelessWidget {
  const ScheduleCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.4.h,
      width: 100.w,
      margin: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade400.withOpacity(0.6), blurRadius: 10)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //left side of container
          Flexible(
            child: Container(
              width: 63.w,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffF9F5EA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You scheduled a call with",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("lib/images/salesman.jpg"),
                        radius: 30,
                      ),
                      SizedBox(width: 3.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Naemur Rahman",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.grey.shade800),),
                          SizedBox(height: 0.4.h,),
                          Text("Salesman",style: TextStyle(fontSize: 12.sp,color: Colors.grey.shade600),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined,size: 3.2.h,color: Colors.black,),
                      SizedBox(width: 2.w,),
                      Text("12:30 PM, 12 Oct",style: TextStyle(fontSize: 11.7.sp,fontWeight: FontWeight.w600),)
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Icon(Icons.content_paste,size: 3.2.h,),
                      SizedBox(width: 2.w,),
                      SizedBox(
                        width: 47.w,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize: 12.7.sp,color: Colors.grey.shade900),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          //right orange container
          Container(
            width: 29.w,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("lib/images/profile.jpg"),
                  radius: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w700),),
                    SizedBox(height: 0.5.h,),
                    Text("10:50 AM",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
