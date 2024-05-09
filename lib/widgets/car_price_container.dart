import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row carPrice(String name, String type, bool isLiked, String image, int tank,
    String steeringWheel, int capacity, double price, bool isPhone) {
  return Row(
    children: [
      Container(
        width: isPhone ? 257 : 315,
        height: isPhone ? 286.h : 388,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.h,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                  color: isLiked ? Colors.red : Colors.grey,
                ),
              ],
            ),
            Text(
              type,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              image,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_gas_station_rounded, color: Colors.grey),
                    SizedBox(
                      width: 5,
                    ),
                    Text("${tank}L")
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.circle, color: Colors.grey),
                    SizedBox(
                      width: 5,
                    ),
                    Text("${steeringWheel}")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.people, color: Colors.grey),
                    SizedBox(
                      width: 5,
                    ),
                    Text("${capacity} people")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "\$$price/",
                      style: TextStyle(
                        fontSize: 18.h,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "day",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    width: 116,
                    height: 44,
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                      "Rent Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        width: 10.h,
      )
    ],
  );
}
