import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/resources/app_text_styles.dart';
import 'package:whering/core/ui/spacing.dart';

class ItemTabBar extends StatelessWidget {
  const ItemTabBar({super.key});

  static const List<String> _tabs = ['About', 'Styling', 'Stats'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: List.generate(_tabs.length, (index) {
          return TabItem(
            label: _tabs[index],
            isSelected: index == 0,
            onTap: () {
              HapticFeedback.lightImpact();
            },
          );
        }),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItem({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Center(
              child: Text(
                label,
                style: getBoldStyle(
                  color: isSelected
                      ? AppColors.textColor
                      : AppColors.textSecondary,
                  fontSize: 14,
                ),
              ),
            ),
            AppSpacings.vertical(12),
            if (isSelected)
              Divider(color: AppColors.textColor, thickness: 1, height: 1),
          ],
        ),
      ),
    );
  }
}
