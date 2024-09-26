import 'package:flexfit/features/onboarding/presentation/view/widgets/onboardingBody.dart';
import 'package:flexfit/features/onboarding/presentation/view/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flexfit/core/routes/app_routers.dart';
import 'package:flexfit/features/onboarding/presentation/view/widgets/constant.dart';
import 'package:go_router/go_router.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  OnboardingFlowState createState() => OnboardingFlowState();
}

class OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnboardingBody(
      onboardingImage: OnBoardingImages.frame1,
      onboardingNumber: 0,
    ),
    const OnboardingBody(
      onboardingImage: OnBoardingImages.frame2,
      onboardingNumber: 1,
    ),
    const OnboardingBody(
      onboardingImage: OnBoardingImages.frame3,
      onboardingNumber: 2,
    ),
    const OnboardingBody(
      onboardingImage: OnBoardingImages.frame4,
      onboardingNumber: 3,
    ),
  ];

  void _onNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
     context.go(AppRouters.register);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: _pages,
      ),
      floatingActionButton: OnboardingNextButton(
        percent: (_currentPage + 1) / _pages.length,
        onTap: _onNextPage,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}