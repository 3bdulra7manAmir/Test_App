import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_images.dart';
import 'package:test_app/Core/constants/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBar({super.key, this.barLeading, this.barTitle, this.isTitleCenterd, this.barActions});

  final Widget? barLeading;
  final String? barTitle;
  final bool? isTitleCenterd;
  final List<Widget>? barActions;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: AppColors.kAppBarBGColor,
      leading: barLeading ?? Image.asset(AppAssets.iconsPNG.leftArrowBlackPNG),
      leadingWidth: 65.w,
      

      title: Text(barTitle ?? "NULL TEXT", style: AppStyles.textStyle14(fontWeight: FontWeight.w600, textColor: AppColors.korLoginWithColor),),
      centerTitle: isTitleCenterd ?? true,

      actions: barActions,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}