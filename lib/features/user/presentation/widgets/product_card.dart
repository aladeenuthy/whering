import 'package:flutter/services.dart';
import 'package:whering/features/features.dart';

class ProductCard extends StatefulWidget {
  final WardrobePiece piece;

  const ProductCard({super.key, required this.piece});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.piece.isFavorite ?? false;
  }

  setIsFavorite(bool value) {
    setState(() {
      isFavorite = value;
    });
  }

  setIsVisible(bool value) {
    setState(() {
      isVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: ValueKey(widget.piece.id),
      onTap: () => {
        HapticFeedback.lightImpact(),
        AppRouter.to(
          page: ItemDetailScreen(
            piece: widget.piece.copyWith(isFavorite: isFavorite),
          ),
        ),
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.white,
                padding: EdgeInsets.all(12),
                child: widget.piece.imageUrl.isNotEmpty
                    ? Image.network(
                        widget.piece.imageUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return ImagePlaceholder();
                        },
                      )
                    : ImagePlaceholder(),
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
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.lightImpact();
                        setIsVisible(!isVisible);
                      },
                      child: Icon(
                        Icons.visibility_outlined,
                        size: 20,
                        color: isVisible
                            ? AppColors.textColor
                            : AppColors.grey.withValues(alpha: 0.5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.lightImpact();
                        setIsFavorite(!isFavorite);
                      },
                      child: Icon(
                        isFavorite == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 14,
                        color: isFavorite == true
                            ? AppColors.textColor
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
