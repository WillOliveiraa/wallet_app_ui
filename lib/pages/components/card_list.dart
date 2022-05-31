import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/pages/components/credit_card_tile.dart';
import 'package:wallet_app_ui/pages/flag_type.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            children: const [
              CreditCardTile(
                flagType: FlagType.visa,
                value: 'R\$ 5.290,00',
                cardNumber: '**** 3456',
                date: '10/25',
                color: Color(0xFF756af4),
                imageColor: Color(0xFF625bd9),
              ),
              // SizedBox(height: 30),
              CreditCardTile(
                flagType: FlagType.masterCard,
                value: 'R\$ 15.090,00',
                cardNumber: '**** 5689',
                date: '02/27',
                color: Color(0xFF9edcf7),
                imageColor: Color(0xFF8ed0ee),
              ),
              // SizedBox(height: 30),
              CreditCardTile(
                flagType: FlagType.payPal,
                value: 'R\$ 1.194,00',
                cardNumber: '**** 1234',
                date: '09/23',
                color: Color(0xFFffdadb),
                imageColor: Color(0xFFe6c4c5),
              ),
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Color(0xFF798296),
            dotColor: Color(0xFFbfc3d0),
          ),
        )
      ],
    );
  }
}
