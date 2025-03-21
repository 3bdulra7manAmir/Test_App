import 'package:flutter/material.dart';
import 'package:test_app/Config/router/app_router.dart';
import 'package:test_app/Config/router/app_routes.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
{
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () => AppRouter.router.pushNamed(AppRoutes.kAppFormView),);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset(AppAssets.iconsPNG.appLogoPNG),
            //SvgPicture.asset(AppAssets.iconsSVG.robotIconSVG),
          ],
        ),
      ),
    );
  }
}