import 'package:dars_10/controllers/lists.dart';
import 'package:dars_10/widgets/app_bars.dart';
import 'package:dars_10/widgets/car_price_container.dart';
import 'package:dars_10/widgets/daily_car.dart';
import 'package:dars_10/widgets/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPhone = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      body: Flexible(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.blueGrey.shade50,
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
            child: Column(
              children: [
                isPhone ? mobileAppBar() : desktopAppBar(),
                isPhone
                    ? Column(
                        children: dailyCar(isPhone),
                      )
                    : Row(
                        children: dailyCar(isPhone),
                      ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Reviews"),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueAccent,
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              "13",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      for (var account in overview_accounts)
                        overViewAccount(
                            account["image"],
                            account["name"],
                            account["job"],
                            account["text_desk"],
                            account["text_mob"],
                            account["time"],
                            isPhone),
                      const Text(
                        "Show all",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Cars",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                isPhone
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var car in cars)
                              carPrice(
                                  car["name"],
                                  car["type"],
                                  car["isLiked"],
                                  car["image"],
                                  car["tank"],
                                  car["wheel"],
                                  car["capacity"],
                                  car["price"],
                                  isPhone),
                          ],
                        ),
                      )
                    : Row(
                        children: [
                          for (var car in cars)
                            carPrice(
                                car["name"],
                                car["type"],
                                car["isLiked"],
                                car["image"],
                                car["tank"],
                                car["wheel"],
                                car["capacity"],
                                car["price"],
                                isPhone)
                        ],
                      ),
                SizedBox(
                  height: 20.h,
                ),
                isPhone
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var car in SUVs)
                              carPrice(
                                  car["name"],
                                  car["type"],
                                  car["isLiked"],
                                  car["image"],
                                  car["tank"],
                                  car["wheel"],
                                  car["capacity"],
                                  car["price"],
                                  isPhone),
                          ],
                        ),
                      )
                    : Row(
                        children: [
                          for (var car in SUVs)
                            carPrice(
                                car["name"],
                                car["type"],
                                car["isLiked"],
                                car["image"],
                                car["tank"],
                                car["wheel"],
                                car["capacity"],
                                car["price"],
                                isPhone)
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
