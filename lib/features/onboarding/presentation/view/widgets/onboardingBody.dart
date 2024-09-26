import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/strings_manager.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.onboardingNumber,
    required this.onboardingImage,
  });

  final int onboardingNumber;

  final String onboardingImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        SvgPicture.asset(onboardingImage, fit: BoxFit.fill,width: MediaQuery.of(context).size.width,),
        Padding(
          padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w, top: 20.h),
          child: Text(
            AppStrings.onBoardingTitle[onboardingNumber],
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w, top: 15.h),
          child: Text(
            AppStrings.onBoardingSubtitle[onboardingNumber],
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
