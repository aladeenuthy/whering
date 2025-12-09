import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features.dart';

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
                              CategoriesList(),
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
