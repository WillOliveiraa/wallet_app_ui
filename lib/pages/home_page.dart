import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/components/action_button.dart';
import 'package:wallet_app_ui/pages/components/card_list.dart';
import 'package:wallet_app_ui/pages/components/header.dart';
import 'package:wallet_app_ui/shared/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Header(),
            CardList(pageController: pageController),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
            ListTile(
              // ignore: unnecessary_const
              leading: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF756af4),
                ),
                child: Image.asset('assets/icons/analysis.png'),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: const Text('Statistcs'),
              subtitle: const Text('Payments and Income'),
            ),
          ],
        ),
      ),
    );
  }
}
