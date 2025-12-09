import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/app.dart';
import 'package:whering/core/locators.dart';

void main() async {
   await ScreenUtil.ensureScreenSize();
   await Locators.register();
  runApp(const MyApp());
}


