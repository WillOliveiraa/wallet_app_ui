import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/components/action_button.dart';
import 'package:wallet_app_ui/pages/components/card_list.dart';
import 'package:wallet_app_ui/pages/components/custom_bottom_navigation_bar.dart';
import 'package:wallet_app_ui/pages/components/header.dart';
import 'package:wallet_app_ui/pages/components/item_tile.dart';
import 'package:wallet_app_ui/shared/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.mainBottomButtonColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.mainBottomButtonColor.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: const Icon(
          Icons.monetization_on_outlined,
          color: Colors.white,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationBar(
                icon: Icons.home,
                title: 'Home',
                color: AppColors.mainBottomButtonColor,
              ),
              CustomBottomNavigationBar(
                icon: Icons.settings,
                title: 'Settings',
                color: AppColors.activeDotColor,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              CardList(pageController: pageController),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ActionButton(
                      image: 'assets/icons/send-money.png',
                      title: 'Send',
                    ),
                    ActionButton(
                      image: 'assets/icons/credit-card.png',
                      title: 'Pay',
                    ),
                    ActionButton(
                      image: 'assets/icons/bill.png',
                      title: 'Bills',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView(
                  children: [
                    ItemTile(
                      image: 'assets/icons/analysis.png',
                      title: 'Statistcs',
                      subTitle: 'Payments and Income',
                      color: const Color(0xFFa8a3ff),
                      onTap: () => debugPrint('ok'),
                    ),
                    ItemTile(
                      image: 'assets/icons/money-transfer.png',
                      title: 'Transactions',
                      subTitle: 'Transactions history',
                      color: const Color(0xFF86d0f4),
                      onTap: () => debugPrint('ok'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
