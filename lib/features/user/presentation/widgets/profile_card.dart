import '../../../features.dart';

class ProfileCard extends StatelessWidget {
  static const double avatarHeight = 88;

  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: (avatarHeight / 2).h),
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: AppAnimatedColumn(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSpacings.vertical((avatarHeight / 2).h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Beth",
                    style: getSemiBoldStyle(
                      fontSize: 18,
                      color: AppColors.textColor,
                    ),
                  ),
                  AppSpacings.horizontal(4),
                  AppSvgWidget(
                    AssetSvgs.favIcon.path,
                    width: 16.w,
                    height: 16.h,
                  ),
                ],
              ),

              Text(
                "@bethswardrobe",
                textAlign: TextAlign.center,
                style: getMediumStyle(fontSize: 12, color: AppColors.textColor),
              ),
              AppSpacings.vertical(12),
              Text(
                "Mostly preloved, I mix simplicity with standout pieces for a timeless, put-together look.",
                textAlign: TextAlign.center,
                style: getMediumStyle(fontSize: 12, color: AppColors.textColor),
              ),
              AppSpacings.vertical(12),
              AppAnimatedRow(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const ['MINIMAL', 'TIMELESS', 'CLASSIC']
                    .map(
                      (tag) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: ItemTags(label: tag),
                      ),
                    )
                    .toList(),
              ),
              AppSpacings.verticalSpaceMedium(),
              ProfileTabs(),
            ],
          ),
        ),

        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacings.horizontalSpaceLarge(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: avatarHeight.w,
                      height: avatarHeight.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                        border: Border.all(color: AppColors.white, width: 3),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetPngs.userAvatar.path),
                        ),
                      ),
                    ),

                    AppAnimatedRow(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NavIcon(icon: AssetSvgs.bookmark),
                        AppSpacings.horizontalSpaceMedium(),
                        NavIcon(icon: AssetSvgs.grid),
                        AppSpacings.horizontalSpaceMedium(),
                        NavIcon(icon: AssetSvgs.stats),
                      ],
                    ),
                  ],
                ),
              ),
              AppSpacings.horizontal(17),
              Icon(Icons.more_vert, size: 24.sp, color: AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class NavIcon extends StatelessWidget {
  final AssetSvgs icon;

  const NavIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.appBgColor,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.white, width: 1.5),
      ),
      child: AppSvgWidget(icon.path, width: 24.w, height: 24.h),
    );
  }
}
