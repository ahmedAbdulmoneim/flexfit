import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../core/resources/color_manager.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
    required this.percent,
    required this.onTap,
  });

  final double percent;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: ColorManger.primary1,
            onPressed: onTap,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: ColorManger.white,
            ),
          ),
          Positioned(
            child: CircularPercentIndicator(
              radius: 35.0,
              lineWidth: 3.0,
              percent: percent,
              progressColor: ColorManger.primary1,
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
