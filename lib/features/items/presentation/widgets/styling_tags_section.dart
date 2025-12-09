import '../../../features.dart';

class ItemDetailsSection extends StatefulWidget {
  final WardrobePiece piece;

  const ItemDetailsSection({super.key, required this.piece});

  @override
  State<ItemDetailsSection> createState() => _ItemDetailsSectionState();
}

class _ItemDetailsSectionState extends State<ItemDetailsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StyleWidget(occasion: widget.piece.occasion, occasionCount: 7),
        ItemDetails(piece: widget.piece),
      ],
    );
  }
}

class StyleWidget extends StatelessWidget {
  final String? occasion;
  final int occasionCount;

  const StyleWidget({super.key, this.occasion, this.occasionCount = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: ExpansionTile(
        dense: true,
        initiallyExpanded: true,
        tilePadding: EdgeInsets.zero,
        iconColor: AppColors.textColor,
        visualDensity: VisualDensity.compact,
        collapsedIconColor: AppColors.textColor,
        childrenPadding: EdgeInsets.zero,
        title: Text(
          'Styling tags',
          style: getSemiBoldStyle(color: AppColors.textColor, fontSize: 14),
        ),
        children: [
          DetailRow(
            labelLarge: false,
            addBorder: false,
            label: 'Occasion',
            trailing: GreyButton(
              child: Row(
                children: [
                  Text(
                    occasion ?? '---',
                    style: getRegularStyle(
                      color: AppColors.textColor,
                      fontSize: 12,
                      fontFamily: FontConstants.spaceMono,
                    ),
                  ),
                  if (occasionCount > 0) ...[
                    AppSpacings.horizontalSpaceMedium(),
                    CircleAvatar(
                      radius: 10.r,
                      backgroundColor: AppColors.greyDark,
                      child: Text(
                        '+$occasionCount',
                        style: getRegularStyle(
                          color: AppColors.textColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          DetailRow(
            labelLarge: false,
            addBorder: false,
            label: 'Mood',
            trailing: AddStyleButton(),
          ),
        ],
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  final WardrobePiece piece;

  const ItemDetails({super.key, required this.piece});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailRow(
          label: 'Brand',
          trailing: GreyButton(label: piece.brand ?? '---'),
        ),
        DetailRow(label: 'Size', trailing: AddStyleButton()),
        DetailRow(
          label: 'Visibility',
          trailing: GreyButton(label: piece.visibility ?? '---'),
        ),
        DetailRow(label: 'Price', trailing: AddStyleButton()),
        DetailRow(label: 'Date purchased', trailing: AddStyleButton()),
        DetailRow(label: 'Season', trailing: AddStyleButton()),
        DetailRow(label: 'State', trailing: AddStyleButton()),
        DetailRow(label: 'Fabric', trailing: AddStyleButton()),
      ],
    );
  }
}

class GreyButton extends StatelessWidget {
  const GreyButton({super.key, this.child, this.label});
  final Widget? child;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      expanded: false,
      height: 30.h,
      color: AppColors.appBgColor,
      child: label == null
          ? child
          : Text(
              label!,
              style: getRegularStyle(
                color: AppColors.textColor,
                fontSize: 12,
                fontFamily: FontConstants.spaceMono,
              ),
            ),
    );
  }
}

class AddStyleButton extends StatelessWidget {
  const AddStyleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      expanded: false,
      height: 30.h,
      color: AppColors.appBgColor,
      child: Text(
        'Add ',
        style: getRegularStyle(
          color: AppColors.alert,
          fontSize: 12,
          fontFamily: FontConstants.spaceMono,
        ),
      ),
    );
  }
}
