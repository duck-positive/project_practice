import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar/ui/screens/home/home_page.dart';

import '../../../main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

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
