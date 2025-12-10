import '../../../features.dart';

class ItemImage extends StatelessWidget {
  final String? imageUrl;
  final String id;

  const ItemImage({super.key, required this.imageUrl, required this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.h,
      width: double.infinity,
      child: Hero(
        tag: id,
        child: AppNetworkImage(
          imageUrl: imageUrl,
          width: double.infinity,
          borderRadius: BorderRadius.circular(16.r),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
