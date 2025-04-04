import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/Core/widgets/app_text_form_field.dart';
import 'package:test_app/config/themes/font_system/app_font_weight.dart';
import 'package:test_app/config/themes/app_sizes.dart';

import 'package:test_app/core/constants/app_images.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/core/constants/app_styles.dart';
import 'package:test_app/core/widgets/app_appbar.dart';
import 'package:test_app/core/widgets/app_button.dart';

class RestPasswordView extends StatelessWidget
{
  const RestPasswordView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: AppStrings.resetPassword,),
      //backgroundColor: AppColors.kWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          AppSizes.size35.verticalSpace,

          Image.asset(AppAssets.iconsPNG.securityLockPNG, alignment: Alignment.center,),

          AppSizes.size24.verticalSpace,

          Container(
            margin: AppPadding.kFormPadding,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(AppStrings.newPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText),),

                AppSizes.size9.verticalSpace,

                CustomTextFormField(fieldText: AppStrings.password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                Text(AppStrings.confirmPassword, style: AppStyles.textStyle13(fontWeight: AppFontWeights.w500, textColor: AppColors.kQuaternaryText),),

                AppSizes.size9.verticalSpace,

                CustomTextFormField(fieldText: AppStrings.confirmPassword, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),

                AppSizes.size24.verticalSpace,

                const CustomButton(buttonText: "Rest Password", isSocialButton: false,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}