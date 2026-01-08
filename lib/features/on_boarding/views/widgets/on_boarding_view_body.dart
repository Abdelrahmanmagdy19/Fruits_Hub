import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/constants.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_botton.dart';
import 'package:furits_ecommerce_app/features/on_boarding/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: currentIndex == 1
                ? AppColor.primaryColor
                : AppColor.primaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          visible: currentIndex == 1 ? true : false,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomBotton(
              text: 'ابدأ الان',
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('login');
              },
            ),
          ),
        ),
        SizedBox(height: 33),
      ],
    );
  }
}
