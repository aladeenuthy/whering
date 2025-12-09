import '../../../features.dart';

class AboutTab extends StatelessWidget {
  final WardrobePiece piece;
  final List<String> tags;
  final ValueChanged<String>? onTagRemoved;

  const AboutTab({
    super.key,
    required this.piece,
    required this.tags,
    this.onTagRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryRow(category: piece.category),
        AppSpacings.verticalSpaceMedium(),
        TagsSection(tags: tags, onTagRemoved: onTagRemoved),
        AppSpacings.verticalSpaceMedium(),
        ItemDetailsSection(piece: piece),
      ],
    );
  }
}
