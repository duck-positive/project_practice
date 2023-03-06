import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedState = 0;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            ProductSection(), 
            ProductSection(), 
            ProductSection(), 
            ProductSection(), 
            ProductSection(), 
            ProductSection(),
          ],
        )
    );
  }
}

class ProductSection extends StatelessWidget {
  const ProductSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> list = [1,2,3,];
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("section name"),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(width: 100, height: 10, color: Colors.blue,
                    margin: EdgeInsets.fromLTRB(0,10,20,0),
                    padding: EdgeInsets.fromLTRB(0,10,20,0),);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}

