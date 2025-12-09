import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserWardrobeCubit, GetUserWardrobeState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: StatItem(count: state.pieces.length, label: 'Items', isSelected: true),
            ),
            AppSpacings.horizontalSpaceExtraLarge(),
            Expanded(
              child: StatItem(count: 1, label: 'Outfits', isSelected: false),
            ),
            AppSpacings.horizontalSpaceExtraLarge(),
            Expanded(
              child: StatItem(count: 0, label: 'Lookbooks', isSelected: false),
            ),
          ],
        );
      },
    );
  }
}

class StatItem extends StatelessWidget {
  final int count;
  final String label;
  final bool isSelected;

  const StatItem({
    super.key,
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
