import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar/ui/screens/map/map_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  return Container(width: 100, height: 10,
                    child: ListTile(
                        title: Text("$index"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage())),
                    ),
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

