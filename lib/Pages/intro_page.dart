import 'package:easy_recipes/Pages/HomePage.dart';
import 'package:easy_recipes/Pages/IntroPages/intro_page1.dart';
import 'package:easy_recipes/Pages/IntroPages/intro_page2.dart';
import 'package:easy_recipes/Pages/IntroPages/intro_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = (index == 2);
            });
          },
          children: const [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
          alignment: const Alignment(0, 0.60),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 20,
                dotHeight: 10,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Color(0xFF6B4B3E)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            alignment: const Alignment(0, 0.82),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),
                isLastPage
                    ? GestureDetector(
                        child: Container(
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF6B4B3E),
                          ),
                          child: const Center(
                            child: Text(
                              'Start',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                      )
                    : GestureDetector(
                        child: Container(
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF6B4B3E),
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                      )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
