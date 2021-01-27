import 'package:cokitchen_assessment/ui/screens/food_screen.dart';
import 'package:cokitchen_assessment/utils/image_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> _children = [FoodScreen(), Container(), Container(), Container()];

  void setCurrentIndex(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _children[this.currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFFF0000),
        unselectedItemColor: Colors.grey,
        onTap: setCurrentIndex,
        backgroundColor: Colors.white,
        elevation: 0.6,
        currentIndex: this.currentIndex,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(ImageUtil.ic_restaurant_menu, color: getColor(0)), title: Text('FOOD')),
          BottomNavigationBarItem(icon: SvgPicture.asset(ImageUtil.ic_search, color: getColor(1)), title: Text('EXPLORE')),
          BottomNavigationBarItem(icon: SvgPicture.asset(ImageUtil.ic_receipt, color: getColor(2)), title: Text('ORDERS')),
          BottomNavigationBarItem(icon: SvgPicture.asset(ImageUtil.ic_percent, color: getColor(3)), title: Text('DEALS')),
        ],
      ),
    );
  }

  Color getColor(int index) {
    return this.currentIndex == index ? Color(0xFFFF0000) : Color(0xFF919191);
  }
}
