import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_fonts.dart';
import '../resources/app_text_styles.dart';
import '../ui/spacing.dart';
import 'app_button.dart';

class AppRetryWidget extends StatelessWidget {
  final VoidCallback onRetry;
  final String errorMessage;
  const AppRetryWidget({
    super.key,
    required this.onRetry,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacings.vertical(70),
        Text(
          errorMessage,
          style: getMediumStyle(
            color: AppColors.textColor,
            fontSize: 12,
            fontFamily: FontConstants.spaceMono,
          ),
        ),
        AppSpacings.verticalSpaceMedium(),
        AppButton(
          label: 'Retry',
          onPressed: () {
            onRetry();
          },
        ),
      ],
    );
  }
}
