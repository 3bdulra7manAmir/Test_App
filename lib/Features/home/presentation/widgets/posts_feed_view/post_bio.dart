import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';


class PostBio extends StatelessWidget
{
  const PostBio({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(AppStrings.mercedesAMGG63, style: AppStyles.textStyle14(
              fontColor: AppColors.color.kSeptenarySemiGreyText,
              fontWeight: AppFontWeights.semiBoldWeight),
            ),
            Container(
              width: 132.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: AppBorders.postPriceCard8,
                border: Border.all(color: AppColors.color.kFormButtonsBorders, width: AppBorderWidths.width2),
              ),
              child: Center(
                child: Text(AppStrings.threeHundredEGP, style: AppStyles.textStyle14(
                  fontWeight: AppFontWeights.semiBoldWeight, 
                  fontColor: AppColors.color.kSeptenarySemiGreyText),
                ),
              ),
            ),
          ],
        ),
        AppSizes.size15.verticalSpace,
        ReadMoreText(
          "Inside the wagon AMG, we don't know which is morecolor we don't know which is more surprising",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Read more.....',
          trimExpandedText: ' Show less',
          style: AppStyles.textStyle12(fontWeight: AppFontWeights.regularWeight),
          moreStyle: AppStyles.textStyle12(
            fontWeight: AppFontWeights.regularWeight,
            fontColor: AppColors.color.kReadMorefontColor,
          ),
          lessStyle: AppStyles.textStyle12(
            fontWeight: AppFontWeights.regularWeight,
            fontColor: AppColors.color.kReadMorefontColor,
          ),
        ),
      ],
    );
  }
}