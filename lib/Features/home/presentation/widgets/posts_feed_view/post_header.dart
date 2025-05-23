// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/app_font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../post_from_inside.dart';
import '../../../../complete_profile/presentation/screens/complete_profile.dart';
import '../../../../join_groups/presentation/screens/join_groups.dart';
import '../../../../moeny_from_interests/presentation/screens/moeny_from_interests_list.dart';
import '../../../../moeny_from_interests/presentation/screens/moeny_from_interests_selected.dart';
import '../../../../auth/register/presentation/widgets/money_from_invite.dart';
import '../../../../post_options_card/presentation/screens/post_options_card.dart';
import '../../../../post_actions/presentation/screens/actions_card.dart';

class PostHeader extends StatelessWidget
{
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Image.asset(AppAssets.iconsPNG.postUserIcon),
        AppSizes.size8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(AppStrings.reuealAndStaging, style: AppStyles.textStyle12(
              fontColor: AppColors.color.kQuaternarySemiBlackText,
              fontWeight: AppFontWeights.semiBoldWeight),
            ),
            AppSizes.size4.verticalSpace,
            Text(AppStrings.justNow, style: AppStyles.textStyle10(
              fontColor: AppColors.color.kTertiarySemiGrey,
              fontWeight: AppFontWeights.mediumWeight),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          //onTap: () => showPostOptionsBottomSheet(context),
          //onTap: () => showActionsBottomSheet(context),
          //onTap: () => showFollowBusinessPageBottomSheet(context),
          onTap: () => showJoinGroupsBottomSheet(context),
          //onTap: () => showMoenyFromInterestsBottomSheet(context),
          //onTap: () => showMoenyFromInviteBottomSheet(context),
          //onTap: () => showCompleteProfileBottomSheet(context),
          //onTap: () => showCommentsBottomSheet(context),
          //onTap: () => showMoenyFromInterestsSelectedBottomSheet(context),
          child: Image.asset(AppAssets.iconsPNG.threeGreyDotsPNG)
        ),
      ],
    );
  }
}