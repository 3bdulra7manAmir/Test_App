import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/config/router/app_router.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../controllers/gender_provider.dart';

void showGenderPickerBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      return Consumer(
        builder: (context, ref, _)
        {
          String selectedGender = ref.read(selectedGenderProvider) ?? ""; //HERE
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState)
            {
              return Padding(
                padding: AppPadding.kTabBarPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    Container(
                      width: 73.w,
                      height: 3.h,
                      decoration: BoxDecoration(color: AppColors.color.kAgainTextDark, borderRadius: AppBorders.dividerBorder,),
                    ),
                    AppSizes.size30.verticalSpace,
                    Column(
                      children:
                      [
                        GenderOption(
                          image: AppAssets.iconsPNG.femalePNG,
                          label: AppLocalizations.of(context).female,
                          value: AppLocalizations.of(context).female,
                          groupValue: selectedGender,
                          onChanged: (value)
                          {
                            setState(() => selectedGender = value);
                            ref.read(selectedGenderProvider.notifier).state = value;
                            AppRouter.router.pop();
                          },
                        ),
                        AppSizes.size10.verticalSpace,
                        GenderOption(
                          image: AppAssets.iconsPNG.malePNG,
                          label: AppLocalizations.of(context).male,
                          value: AppLocalizations.of(context).male,
                          groupValue: selectedGender,
                          onChanged: (value)
                          {
                            setState(() => selectedGender = value);
                            ref.read(selectedGenderProvider.notifier).state = value;
                            AppRouter.router.pop();
                          },
                        ),
                      ],
                    ),
                    AppSizes.size24.verticalSpace,
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}


class GenderOption extends StatelessWidget
{
  final String image;
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const GenderOption({
    super.key, 
    required this.image,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: AppBorders.buttonBorder10,
      child: Container(
        padding: AppPadding.kAppFormPadding,
        decoration: BoxDecoration(borderRadius: AppBorders.buttonBorder10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Row(
              children:
              [
                Image.asset(image),
                Text(label, style: AppStyles.textStyle17(fontColor: AppColors.color.kOctonarySemiBlackText),),
              ],
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) => onChanged(val!),
              activeColor: AppColors.color.kOctonarySemiBlackText,
            ),
          ],
        ),
      ),
    );
  }
}
