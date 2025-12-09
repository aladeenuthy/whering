import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/ui/spacing.dart';

class ItemTabBar extends StatelessWidget {
  const ItemTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

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
            isSelected: index == selectedIndex,
            onTap: () {
              HapticFeedback.lightImpact();
              onTabChanged(index);
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
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Column(
          children: [
            Center(
              child: Text(
                label,
                style: isSelected
                    ? getBoldStyle(color: AppColors.textColor, fontSize: 14)
                    : getMediumStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                      ),
              ),
            ),
            AppSpacings.vertical(12),
            Divider(
              color: isSelected ? AppColors.textColor : AppColors.grey,
              thickness: 2,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
