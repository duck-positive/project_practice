import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacebar/provider/appstate.dart';
import 'package:spacebar/ui/screens/cart/cart_page.dart';
import 'package:spacebar/ui/screens/home/home_page.dart';
import 'package:spacebar/ui/screens/onboarding/login_page.dart';
import 'package:spacebar/ui/screens/onboarding/onboarding_page.dart';

import 'ui/screens/map/map_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppState>(
        create: (context) => AppState(),
        child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: LoginPage(),
      )
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  int _selectedState = 0;
  final List _selectedPage = [HomePage(), CartPage(), MapPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _selectedPage[_selectedState],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedState,
        onTap: (int index){
          setState(() {
            _selectedState = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Shop"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Map"
          ),
        ],
      ),
    );
  }
}
