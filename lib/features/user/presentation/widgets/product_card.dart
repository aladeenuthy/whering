import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_size.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final bool isLiked;
  final int viewCount;
  final VoidCallback? onTap;
  final VoidCallback? onLike;

  const ProductCard({
    super.key,
    required this.imageUrl,
    this.isLiked = false,
    this.viewCount = 0,
    this.onTap,
    this.onLike,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                child: imageUrl.isNotEmpty
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
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
                      onTap: onLike,
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        size: 14,
                        color: isLiked
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
