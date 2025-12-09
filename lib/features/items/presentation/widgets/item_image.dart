import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/shared/image_placeholder.dart';

class ItemImage extends StatelessWidget {
  final String? imageUrl;
  final String id;

  const ItemImage({super.key, required this.imageUrl, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.h,
      width: double.infinity,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
      child: Hero(
        tag: id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: imageUrl != null && imageUrl!.isNotEmpty
              ? Image.network(
                  imageUrl!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return ImagePlaceholder(size: 64);
                  },
                )
              : ImagePlaceholder(size: 64),
        ),
      ),
    );
  }
}
