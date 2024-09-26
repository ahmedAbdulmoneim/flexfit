import 'package:flexfit/features/auth/register.dart';
import 'package:flexfit/features/onboarding/presentation/view/get_started.dart';
import 'package:flexfit/features/onboarding/presentation/view/onboarding_flow.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  static const onBoarding = '/onBoarding';
  static const onBoardingFlow = '/onBoardingFlow';
  static const register = '/register';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const GetStarted();
      },
    ),
    GoRoute(
      path: onBoardingFlow,
      builder: (context, state) => const OnboardingFlow(),
    ),
    GoRoute(
      path: register,
      builder: (context, state) => const Register(),
    ),
  ]);
}
