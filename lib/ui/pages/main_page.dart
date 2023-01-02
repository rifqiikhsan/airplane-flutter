import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/widgets/costum_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

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
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              const CostumBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              const CostumBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              const CostumBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              costumBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
