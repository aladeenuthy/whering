import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/resources/app_fonts.dart';
import 'package:whering/core/resources/app_text_styles.dart';

class ItemDetailHeader extends StatelessWidget {
  final String price;
  final String wearCount;
  final VoidCallback? onClose;

  const ItemDetailHeader({
    super.key,
    required this.price,
    required this.wearCount,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: Row(
        children: [
          Spacer(),
          Text(
            '$price / $wearCount',
            style: getRegularStyle(
              color: AppColors.textColor,
              fontSize: 14,
              fontFamily: FontConstants.spaceMono,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              HapticFeedback.lightImpact();
              onClose?.call();
            },
            child: Icon(Icons.close, size: 24.sp, color: AppColors.textColor),
          ),
        ],
      ),
    );
  }
}
