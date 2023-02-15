import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SharedFilePage extends StatelessWidget {
  const SharedFilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.5.h,
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
          Container(
            width: 26.w,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("lib/images/image4.jpg"),
                  radius: 38,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w700),),
                    SizedBox(height: 0.5.h,),
                    Text("11:47 AM",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),)
                  ],
                )
              ],
            ),
          ),

          //right side of container
          Flexible(
            child: Container(
              width: 67.w,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rakibul Robin",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        " share a file",
                        style: TextStyle(
                            fontSize: 12.5.sp,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("lib/images/anti_policy_book.jpg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 5.5.h,
                          padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )
                          ),
                          child: Row(
                            children: [
                              Image.asset("lib/images/pdf.png",height: 35),
                              Text("The Anti Policy Book",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                              Expanded(child: Container()),
                              Icon(Icons.file_download_outlined,size: 4.5.h,color: Colors.grey.shade500,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Text("PDF",style: TextStyle(fontSize: 12.5.sp,color: Colors.grey.shade500),),
                      SizedBox(width: 0.5.w,),
                      Icon(Icons.noise_control_off,size: 1.h,color: Colors.grey.shade500,),
                      SizedBox(width: 0.5.w,),
                      Text("25 Pages",style: TextStyle(fontSize: 12.5.sp,color: Colors.grey.shade500),),
                      SizedBox(width: 0.5.w,),
                      Icon(Icons.noise_control_off,size: 1.h,color: Colors.grey.shade500,),
                      SizedBox(width: 0.5.w,),
                      Text("2.4 MB",style: TextStyle(fontSize: 12.5.sp,color: Colors.grey.shade500),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
