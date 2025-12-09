import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_colors.dart';

class ImagePlaceholder extends StatelessWidget {
  final double size;
  const ImagePlaceholder({super.key, this.size = 48});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: Icon(
          Icons.checkroom,
          size: size.h,
          color: AppColors.grey.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
