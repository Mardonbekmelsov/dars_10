import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> dailyCar(isPhone) {
  return [
    Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/nissan_text.png",
            width: isPhone ? double.infinity : 0.4.sw,
          ),
          isPhone
              ? SizedBox(
                  height: 0.05.sw,
                )
              : SizedBox(
                  width: 0.05.sw,
                ),
          Row(
            children: [
              Image.asset(
                "assets/images/nissan.png",
                width: isPhone ? 0.27.sw : 0.1.sw,
              ),
              SizedBox(
                width: 0.05.sw,
              ),
              Image.asset("assets/images/nissan_saloon1.png",
                  width: isPhone ? 0.27.sw : 0.1.sw),
              SizedBox(
                width: 0.05.sw,
              ),
              Image.asset("assets/images/nissan_saloon2.png",
                  width: isPhone ? 0.27.sw : 0.1.sw),
            ],
          ),
        ],
      ),
    ),
    isPhone
        ? SizedBox(
            height: 0.05.sw,
          )
        : SizedBox(
            width: 0.05.sw,
          ),
    Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.sp),
      width: isPhone ? double.infinity : 0.4.sw,
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nissan GT-R",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.h,
                  ),
                ),
                const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ),
              ],
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
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'NISMO has become the embodiment of Nissan\'s outstanding performance, inspired by the most unforgiving proving ground, the "race track".',
              style: TextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Type Car",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Sport",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Steering",
                          style: TextStyle(),
                        ),
                        Text(
                          "Manual",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Capacity",
                          style: TextStyle(),
                        ),
                        Text(
                          "2 Person",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gasoline",
                          style: TextStyle(),
                        ),
                        Text(
                          "70L",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
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
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$80.00/",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.h),
                        ),
                        const Text(
                          "days",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "\$100.00",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    width: 140,
                    height: 56,
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
                )
              ],
            )
          ],
        ),
      ),
    ),
  ];
}
