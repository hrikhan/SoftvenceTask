import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Notch extends StatelessWidget {
  const Notch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            offset: Offset(0, 4),
            color: Colors.black.withOpacity(.10),
          ),
        ],
      ),
    );
  }
}
