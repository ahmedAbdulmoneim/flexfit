import 'package:flexfit/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_routers.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 30.0.sp,right: 30.sp,bottom: 30.sp),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Flex",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 35.sp),
                  ),
                  Text(
                      "Fit",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 40.sp,color: ColorManger.primary1),

                  ),
                ],
              ),
              Text(
                'Everybody can train',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: ColorManger.gray1),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.3,
                  height: 60,
                  child: ElevatedButton(onPressed: (){
                    context.go(AppRouters.onBoardingFlow);
                  }, child: const Text('Get Started'),)),


            ],
          ),
        ),
      ),
    );
  }
}
