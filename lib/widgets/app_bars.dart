import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

desktopAppBar() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "MORENT",
              style: TextStyle(
                  fontSize: 32.h,
                  color: Colors.blueAccent.shade700,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Search Something Else",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 100.w,
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/tune_icon.png",
                      height: 25.h,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                iconSize: 10,
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/like_icon.png",
                  height: 50.h,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/notification_icon.png",
                  height: 50.h,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/settings_icon.png",
                  height: 50.h,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/profile_icon.png",
                  height: 50.h,
                )),
          ],
        )
      ],
    ),
  );
}

mobileAppBar() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16.h),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.format_list_bulleted),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/profile_icon.png",
                height: 30.h,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "MORENT",
              style: TextStyle(
                  fontSize: 24.h,
                  color: Colors.blueAccent.shade700,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Search Something Else",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/tune_icon.png",
                  height: 25.h,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
