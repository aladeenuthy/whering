import 'package:flutter/services.dart';

import '../../../features.dart';

class ItemDetailHeader extends StatelessWidget {
  final String price;
  final String wearCount;

  const ItemDetailHeader({
    super.key,
    required this.price,
    required this.wearCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: Row(
        children: [
          Spacer(flex: 3),
          Text(
            '$price / $wearCount',
            style: getRegularStyle(
              color: AppColors.textColor,
              fontSize: 14,
              fontFamily: FontConstants.spaceMono,
            ),
          ),
          Spacer(flex: 2),
          GestureDetector(
            onTap: () {
              HapticFeedback.lightImpact();
              Navigator.pop(context);
            },
            child: Icon(Icons.close, size: 24.sp, color: AppColors.textColor),
          ),
        ],
      ),
    );
  }
}
