import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/shared/app_loading_overlay.dart';
import 'package:whering/core/ui/assets.dart';
import 'package:whering/core/ui/spacing.dart';

import '../../../../core/resources/app_colors.dart';
import '../bloc/get_user_wardrobe_cubit.dart';
import '../widgets/category_list.dart';
import '../widgets/products_grid.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<GetUserWardrobeCubit>().getWardrobe();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double backgroundHeight = 180.h;

    return BlocBuilder<GetUserWardrobeCubit, GetUserWardrobeState>(
      builder: (context, state) {
        return AppLoadingOverlay(
          loading: state.isLoading,
          child: Scaffold(
            backgroundColor: AppColors.appBgColor,
            body: Stack(
              children: [
                Image.asset(
                  AssetPngs.profileBg.path,
                  fit: BoxFit.cover,
                  height: backgroundHeight,
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (backgroundHeight / 2.5).h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Column(
                    children: [
                      const ProfileCard(),
                      AppSpacings.verticalSpaceLarge(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              CategoryList(),
                              AppSpacings.verticalSpaceMedium(),
                              ProductsGrid(),
                              AppSpacings.verticalSpaceLarge(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
