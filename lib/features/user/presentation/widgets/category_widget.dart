import '../../../features.dart';

class CategoryWidget extends StatelessWidget {
  final String label;
  final AssetPngs image;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryWidget({
    super.key,
    required this.label,
    required this.image,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 56.w,
              height: 56.w,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColors.secondary : Colors.transparent,
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  border: isSelected
                      ? Border.all(color: AppColors.secondary, width: 1.5)
                      : null,
                ),
                child: Image.asset(image.path, width: 38.w, height: 38.h),
              ),
            ),
            AppSpacings.verticalSpaceSmall(),
            Text(
              label,
              style: isSelected
                  ? getBoldStyle(fontSize: 10, color: AppColors.textColor)
                  : getRegularStyle(fontSize: 10, color: AppColors.textColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
