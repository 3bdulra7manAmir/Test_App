import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';

class CreateStory extends StatelessWidget
{
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppPadding.kHomeListViewPadding,
      height: 148.h,
      width: 112.w,
      decoration:  BoxDecoration(
        borderRadius: AppBorders.buttonBorder5,
        image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.storyRobotPNG), fit: BoxFit.cover),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Image.asset(AppAssets.iconsPNG.storyCreate, width: 48.w, height: 48.h,),
          CustomButton(
            buttonBorderRadius: AppBorders.buttonBorder5,
            buttonText: AppStrings.createStory, buttonOnPressed: () {},
            buttonWidth: 88.w,
            buttonHeight: 27.h,
            buttonBackgroundColor: const Color(0xffbbbbbb),
            buttonPadding: AppPadding.kApp15Padding,
            buttonTextStyle: AppStyles.textStyle10(fontColor: AppColors.color.kSecondaryWhite, fontWeight: AppFontWeights.boldWeight),),
        ],
      ),
    );
  }
}