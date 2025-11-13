import 'package:bookly_app_clean_arch/constans.dart';
import 'package:bookly_app_clean_arch/core/utils/app_router.dart';
import 'package:bookly_app_clean_arch/core/utils/assets_data.dart';
import 'package:bookly_app_clean_arch/features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    slidingAnimationMethode();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 5),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void slidingAnimationMethode() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRouter.kHomeView,);
      // GoRouter.of(context).go(AppRouter.kHomeView);
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: transationDuration,
      // );
    });
  }
}
