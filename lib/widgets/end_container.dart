import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

logo_column() {
  return Column(
    children: [
      Text(
        "MORENT",
        style: TextStyle(
          fontSize: 24.h,
          color: Colors.blueAccent.shade700,
        ),
      ),
      Text(
        "Our vision is to provide convenience\n and help increase your sales business.",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );
}
