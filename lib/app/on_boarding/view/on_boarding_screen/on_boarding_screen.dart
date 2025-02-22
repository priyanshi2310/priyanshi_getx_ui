import 'package:flutter/material.dart';

class OnboardingModel {
  final String imagePath;
  final String title;
  final String detail;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.detail,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  List<OnboardingModel> onboardingData = [
    OnboardingModel(
      imagePath: 'images/Illustration.png',
      title: "Welcome",
      detail:
          "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
    ),
    OnboardingModel(
      imagePath: 'images/Illustrations.png',
      title: 'All your favorites',
      detail:
          "Order from the best local restaurants with easy, on-demand delivery.",
    ),
    OnboardingModel(
      imagePath: 'images/Illustrations (1).png',
      title: 'Free delivery offers',
      detail:
          "Free delivery for new customers via Apple Pay and other payment methods.",
    ),
    OnboardingModel(
      imagePath: 'images/Illustrations (2).png',
      title: 'Choose your food',
      detail:
          "Easily find your type of food craving and you’ll get delivery in a wide range.",
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    controller: pageController,
                    itemCount: onboardingData.length,
                    itemBuilder: (BuildContext context, int index) {
                      final model = onboardingData[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              model.imagePath,
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 40),
                            Text(
                              model.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff010F07),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                model.detail,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff868686),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/g12.png',
                          scale: 0.8,
                        ),
                        SizedBox(width: 8),
                        Text(
                          textAlign: TextAlign.center,
                          'Tamang\nFoodService',
                          style: TextStyle(
                              fontSize: 37, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageController.jumpToPage(3); // Skip to the last page
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                if (currentPage == 3) {
                  print('Get Started Button Pressed');
                } else {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffEEA734),
                ),
                child: Center(
                  child: Text(
                    currentPage == 3 ? "Get Started" : 'Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
