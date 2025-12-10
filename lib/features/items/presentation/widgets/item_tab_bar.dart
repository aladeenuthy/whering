import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';

class ItemTabBar extends StatelessWidget {
  const ItemTabBar({super.key, required this.tabController});

  final TabController tabController;

  static const List<String> _tabs = ['About', 'Styling', 'Stats'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      labelColor: AppColors.textColor,
      unselectedLabelColor: AppColors.textSecondary,
      labelStyle: getBoldStyle(color: AppColors.textColor, fontSize: 14),
      unselectedLabelStyle: getMediumStyle(
        color: AppColors.textSecondary,
        fontSize: 14,
      ),
      indicatorColor: AppColors.textColor,
      indicatorWeight: 2,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: AppColors.grey.withValues(alpha: 0.5),
      tabs: _tabs.map((label) => Tab(text: label)).toList(),
    );
  }
}
