import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/resources/app_text_styles.dart';
import 'package:whering/core/ui/assets.dart';
import 'package:whering/core/ui/spacing.dart';

class TagsSection extends StatelessWidget {
  final List<String> tags;
  final ValueChanged<String>? onTagRemoved;

  const TagsSection({super.key, required this.tags, this.onTagRemoved});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tags',
                style: getSemiBoldStyle(
                  color: AppColors.textColor,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                },
                child: AppSvgWidget(AssetSvgs.edit.path),
              ),
            ],
          ),
          AppSpacings.verticalSpaceMedium(),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: tags.map((tag) {
              return TagChip(
                label: tag,
                onRemove: () {
                  HapticFeedback.lightImpact();
                  onTagRemoved?.call(tag);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String label;
  final VoidCallback? onRemove;

  const TagChip({super.key, required this.label, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: getMediumStyle(color: AppColors.textColor, fontSize: 12),
          ),
          AppSpacings.horizontalSpaceSmall(),
          GestureDetector(
            onTap: onRemove,
            child: Icon(
              Icons.close,
              size: 14.sp,
              color: AppColors.textColor.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
