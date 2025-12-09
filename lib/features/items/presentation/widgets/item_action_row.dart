import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/shared/app_animated_column.dart';
import 'package:whering/core/shared/app_button.dart';
import 'package:whering/core/ui/assets.dart';
import 'package:whering/core/ui/spacing.dart';

class ItemActionRow extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onFavoritePressed;

  const ItemActionRow({
    super.key,
    this.isFavorite = false,
    this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAnimatedRow(
          children: [
            ActionIcon(
              icon: isFavorite ? Icons.favorite : Icons.favorite_border,
              onTap: onFavoritePressed,
            ),
            AppSpacings.horizontal(20),
            ActionIcon(icon: Icons.visibility_outlined),
            AppSpacings.horizontal(20),
            ActionIcon(child: AppSvgWidget(AssetSvgs.share.path)),
            AppSpacings.horizontal(20),
            ActionIcon(icon: Icons.more_vert),
          ],
        ),
        const Spacer(),
        AppButton(label: 'Create outfit', onPressed: () {}, expanded: false),
      ],
    );
  }
}

class ActionIcon extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onTap;
  final Widget? child;

  const ActionIcon({super.key, this.icon, this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap?.call();
      },
      child: child ?? Icon(icon, size: 22.sp, color: AppColors.textColor),
    );
  }
}
