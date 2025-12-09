import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/resources/app_text_styles.dart';
import 'package:whering/core/shared/app_button.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final bool labelLarge;

  final Widget trailing;
  final bool addBorder;

  const DetailRow({
    super.key,
    this.labelLarge = true,
    required this.label,
    required this.trailing,
    this.addBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        border: addBorder
            ? Border(
                bottom: BorderSide(
                  color: AppColors.grey.withValues(alpha: 0.5),
                  width: 1,
                ),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: labelLarge
                ? getSemiBoldStyle(color: AppColors.textColor, fontSize: 14)
                : getRegularStyle(color: AppColors.textColor, fontSize: 12),
          ),
          trailing,
        ],
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  final String? category;

  const CategoryRow({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.5),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Category',
            style: getSemiBoldStyle(color: AppColors.textColor, fontSize: 14),
          ),
          AppButton(
            onPressed: () {},
            color: AppColors.appBgColor,
            expanded: false,
            child: Text(
              category ?? '---',
              style: getRegularStyle(color: AppColors.textColor, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
