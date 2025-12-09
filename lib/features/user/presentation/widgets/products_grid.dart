import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/resources/app_colors.dart';
import 'package:whering/core/resources/app_text_styles.dart';

import '../../../../core/resources/app_fonts.dart';
import '../../../../core/shared/app_retry_widget.dart';
import '../../../../core/ui/spacing.dart';
import '../bloc/get_user_wardrobe_cubit.dart';
import 'product_card.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserWardrobeCubit, GetUserWardrobeState>(
      builder: (context, state) {
        if (state.isLoading || state.isInitial) {
          return SizedBox.shrink();
        } else if (state.isError) {
          return AppRetryWidget(
            onRetry: () => context.read<GetUserWardrobeCubit>().getWardrobe(),
            errorMessage: state.errorMessage ?? 'Error loading wardrobe',
          );
        } else if (state.isEmpty) {
          return Column(
            children: [
              AppSpacings.vertical(70),
              Text(
                'No wardrobe items found',
                style: getMediumStyle(
                  color: AppColors.textColor,
                  fontSize: 12,
                  fontFamily: FontConstants.spaceMono,
                ),
              ),
            ],
          );
        }

        return GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 0.8,
          ),
          itemCount: state.pieces.length,
          itemBuilder: (context, index) =>
              ProductCard(piece: state.pieces[index]),
        );
      },
    );
  }
}
