import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/features/user/domain/models/wardrobe_piece.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_size.dart';

class ProductCard extends StatelessWidget {
  final WardrobePiece piece;

  const ProductCard({super.key, required this.piece});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {HapticFeedback.lightImpact()},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s16),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.white,
                child: piece.imageUrl.isNotEmpty
                    ? Image.network(
                        piece.imageUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return _PlaceholderContent();
                        },
                      )
                    : _PlaceholderContent(),
              ),
            ),

            Positioned(
              top: 12.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.visibility_outlined,
                      size: 20,
                      color: AppColors.grey.withValues(alpha: 0.5),
                    ),
                    GestureDetector(
                      onTap: () => {HapticFeedback.lightImpact()},
                      child: Icon(
                        piece.isFavorite == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 14,
                        color: piece.isFavorite == true
                            ? AppColors.secondary
                            : AppColors.grey.withValues(alpha: 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlaceholderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: Icon(
          Icons.checkroom,
          size: 48.sp,
          color: AppColors.grey.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
