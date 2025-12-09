import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';

class ItemTags extends StatelessWidget {
  final String label;

  const ItemTags({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.appBgColor,
        borderRadius: BorderRadius.circular(56.r),
      ),
      child: Text(
        label,
        style: getSemiBoldStyle(fontSize: 10, color: AppColors.textColor),
      ),
    );
  }
}
