import '../../../features.dart';

class ItemDetailScreen extends StatefulWidget {
  final WardrobePiece piece;

  const ItemDetailScreen({super.key, required this.piece});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  bool _isFavorite = false;
  List<String> _tags = [];

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.piece.isFavorite ?? false;
    _tags = List<String>.from(widget.piece.tags);
  }

  void _onFavoritePressed() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  void _onTagRemoved(String tag) {
    setState(() {
      _tags.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 48.h),
                color: AppColors.appBgColor,
                child: ItemDetailHeader(
                  price: widget.piece.price != null
                      ? '£${widget.piece.price!.toStringAsFixed(2)}'
                      : '£0.00',
                  wearCount: 'WEAR',
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 16.h,
                          left: 20.w,
                          right: 20.w,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.appBgColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.r),
                            bottomRight: Radius.circular(20.r),
                          ),
                        ),
                        child: Column(
                          children: [
                            ItemImage(
                              imageUrl: widget.piece.imageUrl,
                              id: widget.piece.id,
                            ),
                            ItemActionRow(
                              isFavorite: _isFavorite,
                              onFavoritePressed: _onFavoritePressed,
                            ),
                          ],
                        ),
                      ),
                      AppSpacings.verticalSpaceLarge(),
                      ItemTabBar(),
                      AppSpacings.verticalSpaceLarge(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: AboutTab(
                          piece: widget.piece,
                          tags: _tags,
                          onTagRemoved: _onTagRemoved,
                        ),
                      ),
                      AppSpacings.vertical(200.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: ItemActionButtons()),
        ],
      ),
    );
  }
}
