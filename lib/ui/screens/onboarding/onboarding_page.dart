import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar/ui/screens/home/home_screen.dart';

import '../../../main.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageController = PageController(initialPage: 0);
  final List<Widget> _pageList = [FirstPage(), SecondPage(), SecondPage()];
  int _currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          onPageChanged: (int index) {
            setState(() {
              print("$index");
              _currentIdx = index;
            });
            },
          itemCount: _pageList.length,
          itemBuilder: (BuildContext context, int index){
            return _pageList[index];
          },
        ),
        Positioned(
            left: 0,
            top: 0,
            bottom: 40,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pageList.length,
                      (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                            onTap: () => pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn
                            ),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: _currentIdx == index ? Colors.blue : Colors.black12,
                            ),
                          )
                        )
                )
            )
        ),
      ]
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is onBoarding page"),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is onBoarding page"),
      ),
      bottomSheet: TextButton(
          child: Text("da"),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const MainPage(
                      title: "title"
                  )
              )
          )
      ),
    );
  }
}

