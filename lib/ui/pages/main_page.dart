import 'package:airplane/ui/widgets/costum_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget costumBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CostumBottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              const CostumBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              const CostumBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              const CostumBottomNavigationItem(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          const Text('Main Page'),
          costumBottomNavigation(),
        ],
      ),
    );
  }
}
