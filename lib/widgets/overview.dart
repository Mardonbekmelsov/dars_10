import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Column overViewAccount(String image, String name, String job,
    String text_desktop, String text_mobile, String time, bool isPhone) {
  return Column(
    children: [
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: isPhone ? 44 : 76,
                height: isPhone ? 44 : 56,
              ),
            ],
          ),
          SizedBox(
            width: 10.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20.h,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        job,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  // SizedBox(width: isPhone ? 20.w : 200.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_outline,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                // height: 60.h,
                width: isPhone ? 285 : 315.w,
                child: Text(
                  isPhone ? text_mobile : text_desktop,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20.h,
      )
    ],
  );
}
