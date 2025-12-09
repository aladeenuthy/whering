import '../../features/features.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  static const _bounceDuration = Duration(milliseconds: 800);
  static const _transitionDuration = Duration(milliseconds: 700);
  static const _transitionDelay = Duration(milliseconds: 200);

  late final AnimationController _bounceController;
  late final AnimationController _transitionController;

  late final Animation<double> _bounceAnimation;
  late final Animation<double> _fullLogoSlideAnimation;
  late final Animation<double> _fullLogoOpacityAnimation;
  late final Animation<double> _wLogoScaleAnimation;
  late final Animation<double> _wLogoSlideAnimation;
  late final Animation<double> _wLogoOpacityAnimation;

  @override
  void initState() {
    super.initState();
    _initControllers();
    _initAnimations();
    _startAnimationSequence();
  }

  void _initControllers() {
    _bounceController = AnimationController(
      duration: _bounceDuration,
      vsync: this,
    );
    _transitionController = AnimationController(
      duration: _transitionDuration,
      vsync: this,
    );
  }

  void _initAnimations() {
    _bounceAnimation = _createAnimation(
      controller: _bounceController,
      curve: Curves.elasticOut,
    );

    _fullLogoSlideAnimation = _createAnimation(
      controller: _transitionController,
      begin: 0.0,
      end: 0.15,
      interval: const Interval(0.0, 0.6, curve: Curves.easeInOut),
    );

    _fullLogoOpacityAnimation = _createAnimation(
      controller: _transitionController,
      begin: 1.0,
      end: 0.0,
      interval: const Interval(0.1, 0.5, curve: Curves.easeIn),
    );

    _wLogoSlideAnimation = _createAnimation(
      controller: _transitionController,
      begin: -0.3,
      end: 0.0,
      interval: const Interval(0.0, 0.8, curve: Curves.easeOutCubic),
    );

    _wLogoScaleAnimation = _createAnimation(
      controller: _transitionController,
      begin: 0.3,
      end: 1.0,
      interval: const Interval(0.0, 0.9, curve: Curves.easeOutCubic),
    );

    _wLogoOpacityAnimation = _createAnimation(
      controller: _transitionController,
      interval: const Interval(0.0, 0.25, curve: Curves.easeIn),
    );
  }

  Animation<double> _createAnimation({
    required AnimationController controller,
    double begin = 0.0,
    double end = 1.0,
    Curve curve = Curves.linear,
    Interval? interval,
  }) {
    return Tween<double>(
      begin: begin,
      end: end,
    ).animate(CurvedAnimation(parent: controller, curve: interval ?? curve));
  }

  void _startAnimationSequence() {
    _bounceController.forward().then((_) {
      Future.delayed(_transitionDelay, () {
        if (mounted) {
          _transitionController.forward().then((_) {
            if (mounted) _navigateToProfile();
          });
        }
      });
    });
  }

  void _navigateToProfile() {
    AppRouter.to(page: const ProfileScreen());
  }

  @override
  void dispose() {
    _bounceController.dispose();
    _transitionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          _FullLogo(
            bounceController: _bounceController,
            transitionController: _transitionController,
            bounceAnimation: _bounceAnimation,
            slideAnimation: _fullLogoSlideAnimation,
            opacityAnimation: _fullLogoOpacityAnimation,
          ),
          _WLogo(
            controller: _transitionController,
            scaleAnimation: _wLogoScaleAnimation,
            slideAnimation: _wLogoSlideAnimation,
            opacityAnimation: _wLogoOpacityAnimation,
          ),
        ],
      ),
    );
  }
}

class _FullLogo extends StatelessWidget {
  final AnimationController bounceController;
  final AnimationController transitionController;
  final Animation<double> bounceAnimation;
  final Animation<double> slideAnimation;
  final Animation<double> opacityAnimation;

  const _FullLogo({
    required this.bounceController,
    required this.transitionController,
    required this.bounceAnimation,
    required this.slideAnimation,
    required this.opacityAnimation,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: Listenable.merge([bounceController, transitionController]),
      builder: (context, child) {
        final bounceScale = bounceAnimation.value;
        final isTransitioning = transitionController.value > 0.0;
        final opacity = (isTransitioning ? opacityAnimation.value : bounceScale)
            .clamp(0.0, 1.0);

        return Center(
          child: Opacity(
            opacity: opacity,
            child: Transform.translate(
              offset: Offset(slideAnimation.value * screenWidth, 0),
              child: Transform.scale(
                scale: bounceScale,
                child: AppSvgWidget(
                  AssetSvgs.logoFull.path,
                  height: 182.h,
                  width: 268.w,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _WLogo extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> scaleAnimation;
  final Animation<double> slideAnimation;
  final Animation<double> opacityAnimation;

  const _WLogo({
    required this.controller,
    required this.scaleAnimation,
    required this.slideAnimation,
    required this.opacityAnimation,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Center(
          child: Opacity(
            opacity: opacityAnimation.value.clamp(0.0, 1.0),
            child: Transform.translate(
              offset: Offset(slideAnimation.value * screenWidth, 0),
              child: Transform.scale(
                scale: scaleAnimation.value,
                alignment: Alignment.centerLeft,
                child: AppSvgWidget(AssetSvgs.logo.path, height: 182.h),
              ),
            ),
          ),
        );
      },
    );
  }
}
