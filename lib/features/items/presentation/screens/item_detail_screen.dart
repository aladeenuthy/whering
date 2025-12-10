import '../../../features.dart';

class ItemDetailScreen extends StatefulWidget {
  final WardrobePiece piece;

  const ItemDetailScreen({super.key, required this.piece});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen>
    with SingleTickerProviderStateMixin {
  bool _isFavorite = false;
  List<String> _tags = [];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.piece.isFavorite ?? false;
    _tags = List<String>.from(widget.piece.tags);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
                            AppSpacings.verticalSpaceMedium(),
                            ItemActionRow(
                              isFavorite: _isFavorite,
                              onFavoritePressed: _onFavoritePressed,
                            ),
                          ],
                        ),
                      ),
                      AppSpacings.verticalSpaceLarge(),
                      ItemTabBar(tabController: _tabController),
                      AppSpacings.verticalSpaceLarge(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TabContentBuilder(
                          tabController: _tabController,
                          onTagRemoved: _onTagRemoved,
                          piece: widget.piece,
                          tags: _tags,
                        ),
                      ),
                      AppSpacings.vertical(250.h),
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

class TabContentBuilder extends StatelessWidget {
  final TabController tabController;
  final List<String> tags;
  final ValueChanged<String>? onTagRemoved;
  final WardrobePiece piece;

  const TabContentBuilder({
    super.key,
    required this.tabController,
    required this.tags,
    required this.piece,
    this.onTagRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController,
      builder: (context, _) {
        return switch (tabController.index) {
          0 => AboutTab(piece: piece, tags: tags, onTagRemoved: onTagRemoved),
          1 => const _PlaceholderTab(title: 'Styling Tab'),
          2 => const _PlaceholderTab(title: 'Stats Tab'),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}

class _PlaceholderTab extends StatelessWidget {
  final String title;

  const _PlaceholderTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacings.vertical(50),
        Text(
          title,
          style: getBoldStyle(
            color: AppColors.textColor,
            fontSize: 24,
            fontFamily: FontConstants.spaceMono,
          ),
        ),
      ],
    );
  }
}
