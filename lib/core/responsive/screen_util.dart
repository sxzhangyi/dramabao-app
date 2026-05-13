import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreenUtil {
  static void init(BuildContext context, {double designWidth = 375}) {
    ScreenUtil.init(context, designSize: Size(designWidth, 812));
  }
}
