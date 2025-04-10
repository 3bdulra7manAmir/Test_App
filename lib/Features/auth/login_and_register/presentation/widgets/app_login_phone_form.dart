import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_borders.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_social_button.dart';
import '../../../../../core/widgets/app_form_container.dart';


class LoginFormWithPhone extends ConsumerWidget
{
  const LoginFormWithPhone({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeMode = ref.watch(themeControllerProvider);
    final platformLogo = themeMode == ThemeMode.light ? AppAssets.iconsPNG.applePNG : AppAssets.iconsPNG.appleDarkPNG;
    return Container(
      padding: AppPadding.kAppFormPadding,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            AppSizes.size28.verticalSpace,
            
            Row(
              children:
              [
                Text(AppLocalizations.of(context).phoneNumber, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
                
                const Spacer(),

                Text(AppLocalizations.of(context).or, style: AppStyles.textStyle12(textColor: AppColors.color.kSecondarySemiGreyText,),),
                
                AppSizes.size4.horizontalSpace,

                Text(AppLocalizations.of(context).email, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textDecoration: TextDecoration.underline),),
              ],
            ),
      
            AppSizes.size8.verticalSpace,
      
            CustomContainer(fieldPrefixIcon: Image.asset(AppAssets.iconsPNG.egyptFlagPNG), fieldText: AppLocalizations.of(context).countryCode),
      
            AppSizes.size24.verticalSpace,
      
            Text(AppLocalizations.of(context).password, style: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText,),),
      
            AppSizes.size8.verticalSpace,
      
            CustomContainer(fieldText: AppLocalizations.of(context).password, fieldsuffixIcon: Image.asset(AppAssets.iconsPNG.corssedEyePNG),),
      
            AppSizes.size16.verticalSpace,
      
            Row(
              children:
              [
                Checkbox(value: false, onChanged: (value) {}, side: BorderSide(width: AppBorderWidths.width2, color: AppColors.color.kFormButtonsBorders,),),

                Text(AppLocalizations.of(context).remember, style: AppStyles.textStyle12(textColor: AppColors.color.kTertiarySemiGrey),),

                const Spacer(),

                Text(AppLocalizations.of(context).forgetPassword, style: AppStyles.textStyle12(
                  textColor: AppColors.color.kQuinarySemiBlueText,
                  textDecoration: TextDecoration.underline,
                  textDecorationColor: AppColors.color.kForgetPasswordUnderLine,
                  ),
                ),
              ],
            ),
      
            AppSizes.size16.verticalSpace,
      
            CustomButton(buttonText: AppLocalizations.of(context).login,),
      
            AppSizes.size20.verticalSpace,
      
            Align(
              alignment: Alignment.center,
              child: Text(AppLocalizations.of(context).orLoginWith, style: AppStyles.textStyle12(fontWeight: AppFontWeights.boldWeight, textColor: AppColors.color.kSenaryTotalBlackText),)
            ),
      
            AppSizes.size20.verticalSpace,
      
            Column(
              children:
              [
                Row(
                  children:
                  [
                    Expanded(
                      child: CustomSocialButton(buttonText: AppLocalizations.of(context).facebook,
                      platformLogo: AppAssets.iconsPNG.faceBookPNG,
                      buttonBackgroundColor: AppColors.color.kPrimaryDark,
                      buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),                  
                      ),
                    ),
                
                    AppSizes.size12.horizontalSpace,
                
                    Expanded(
                      child: CustomSocialButton(buttonText: AppLocalizations.of(context).google,
                      platformLogo: AppAssets.iconsPNG.googlePNG,
                      buttonBackgroundColor: AppColors.color.kPrimaryDark,
                      buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),
                      ),
                    ),
                  ],
                ),
      
                AppSizes.size12.verticalSpace,

                
                
                CustomSocialButton(buttonText: AppLocalizations.of(context).apple,
                platformLogo: platformLogo,
                buttonWidth: 174.w,
                isLogoSpace: false,
                buttonBackgroundColor: AppColors.color.kPrimaryDark,
                buttonTextStyle: AppStyles.textStyle12(textColor: AppColors.color.kQuaternarySemiBlackText),
                ),
              ],
            ),

            AppSizes.size20.verticalSpace,
          ],
        ),
      ),
    );
  }
}