import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/shared/app_animated_column.dart';
import '../../../../core/shared/app_button.dart' show AppButton;
import '../../../../core/ui/spacing.dart';

class ItemActionButtons extends StatelessWidget {
  const ItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: AppAnimatedColumn(
        children: [
          AppButton(
            label: 'Save',
            onPressed: () {},
            height: 48,
            margin: EdgeInsets.zero,
          ),
          AppSpacings.vertical(12),
          AppButton(
            label: 'Archive',
            onPressed: () {},
            height: 48,
            expanded: true,
            margin: EdgeInsets.zero,
            color: AppColors.appBgColor,
          ),
          AppSpacings.verticalSpaceSmall(),
          AppButton(
            onPressed: () {},
            height: 48,
            color: Colors.transparent,
            child: Text(
              'Delete',
              style: getSemiBoldStyle(color: AppColors.alert, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
