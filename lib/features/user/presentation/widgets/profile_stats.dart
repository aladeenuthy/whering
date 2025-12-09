import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_fonts.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/ui/spacing.dart';

class ProfileTabs extends StatelessWidget {
  final int itemsCount;
  final int outfitsCount;
  final int lookbooksCount;
  final int selectedIndex;

  const ProfileTabs({
    super.key,
    required this.itemsCount,
    required this.outfitsCount,
    required this.lookbooksCount,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: _StatItem(
            count: itemsCount,
            label: 'Items',
            isSelected: selectedIndex == 0,
          ),
        ),
        AppSpacings.horizontalSpaceExtraLarge(),
        Expanded(
          child: _StatItem(
            count: outfitsCount,
            label: 'Outfits',
            isSelected: selectedIndex == 1,
          ),
        ),
        AppSpacings.horizontalSpaceExtraLarge(),
        Expanded(
          child: _StatItem(
            count: lookbooksCount,
            label: 'Lookbooks',
            isSelected: selectedIndex == 2,
          ),
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final int count;
  final String label;
  final bool isSelected;

  const _StatItem({
    required this.count,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$count',
          style: isSelected
              ? getBoldStyle(
                  fontSize: 10,
                  color: AppColors.textColor,
                  fontFamily: FontConstants.spaceMono,
                )
              : getRegularStyle(
                  fontSize: 10,
                  color: AppColors.textColor,
                  fontFamily: FontConstants.spaceMono,
                ),
        ),

        Text(
          label,
          style: isSelected
              ? getBoldStyle(
                  fontSize: 10,
                  color: AppColors.textColor,
                  fontFamily: FontConstants.spaceMono,
                )
              : getRegularStyle(
                  fontSize: 10,
                  color: AppColors.textColor,
                  fontFamily: FontConstants.spaceMono,
                ),
        ),
        AppSpacings.vertical(14),
        if (isSelected)
          Divider(
            color: AppColors.textColor,
            thickness: 2,
            height: 2,
            radius: BorderRadius.circular(56.r),
          ),
      ],
    );
  }
}
