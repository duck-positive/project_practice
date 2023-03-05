import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/appstate.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<AppState>(context, listen: true);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${counter.getCount}"),
            TextButton(
                onPressed: (){
                  counter.incCount();
                },
                child: Text("add")
            )
          ]
        )
      ),
    );
  }
}
