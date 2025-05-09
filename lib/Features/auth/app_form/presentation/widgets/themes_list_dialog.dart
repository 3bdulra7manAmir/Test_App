import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../../config/themes/color_system/controller/theme_controller.dart';
import '../../../../../config/themes/app_sizes.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_padding.dart';

void showThemesBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).cardColor,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      return Consumer(
        builder: (context, ref, _)
        {
          final themeController = ref.read(themeControllerProvider.notifier);
          final currentThemeMode = ref.watch(themeControllerProvider);

          return StatefulBuilder(
            builder: (context, setState)
            {
              ThemeMode selectedMode = currentThemeMode;

              return Padding(
                padding: AppPadding.kAppFormPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    AppSizes.size8.verticalSpace,

                    Container(
                      margin: AppPadding.kAppFormPadding,
                      alignment: Alignment.center,
                      width: 44.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: AppColors.color.kSecondarySemiGreyText,
                        borderRadius: AppBorders.dividerBorder,
                      ),
                    ),

                    AppSizes.size30.verticalSpace,

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [

                        RadioListTile<ThemeMode>(
                          value: ThemeMode.light,
                          groupValue: selectedMode,
                          onChanged: (value)
                          {
                            if (value != null)
                            {
                              setState(() => selectedMode = value);
                              themeController.setTheme(value);
                              Navigator.pop(context);
                            }
                          },
                          title: Text(AppLocalizations.of(context).light),
                          activeColor: AppColors.color.kPrimaryGreyText,
                        ),

                        RadioListTile<ThemeMode>(
                          value: ThemeMode.dark,
                          groupValue: selectedMode,
                          onChanged: (value)
                          {
                            if (value != null)
                            {
                              setState(() => selectedMode = value);
                              themeController.setTheme(value);
                              Navigator.pop(context);
                            }
                          },
                          title: Text(AppLocalizations.of(context).dark),
                          activeColor: AppColors.color.kPrimaryGreyText,
                        ),
                      ],
                    ),

                    AppSizes.size30.verticalSpace,
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
