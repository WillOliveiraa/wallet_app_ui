import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/flag_type.dart';

class CreditCardTile extends StatelessWidget {
  const CreditCardTile({
    Key? key,
    required this.flagType,
    required this.value,
    required this.cardNumber,
    required this.date,
    required this.color,
    this.imageColor,
  }) : super(key: key);

  final FlagType flagType;
  final String value;
  final String cardNumber;
  final String date;
  final Color color;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: 300,
      height: 200,
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/icons/undulating-arrow.svg',
              fit: BoxFit.cover,
              width: 500,
              height: 500,
              color: imageColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: Stack(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Spacer(),
                    showFlagType(flagType),
                  ],
                ),
                const Positioned(
                  top: 15,
                  left: 0,
                  child: Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      // color: Color(0xFFcdc6fd),
                      color: Colors.white70,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    value,
                    style: GoogleFonts.nunito(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      // shadows: <Shadow>[
                      //   const Shadow(
                      //     offset: Offset(0.6, 0.5),
                      //     blurRadius: 3,
                      //     color: Colors.black26,
                      //   ),
                      //   const Shadow(
                      //     offset: Offset(0.6, 0.5),
                      //     blurRadius: 3,
                      //     color: Colors.black26,
                      //   ),
                      // ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    cardNumber,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      // color: Color(0xFFcdc6fd),
                      color: Colors.white70,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    date,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      // color: Color(0xFFcdc6fd),
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showFlagType(FlagType flagType) {
    switch (flagType) {
      case FlagType.visa:
        return SizedBox(
          width: 45,
          height: 45,
          child: Image.asset('assets/icons/visa.png'),
        );
      case FlagType.masterCard:
        return SizedBox(
          width: 45,
          height: 45,
          child: Image.asset('assets/icons/maestro.png'),
        );
      case FlagType.payPal:
        return SizedBox(
          width: 45,
          height: 45,
          child: Image.asset('assets/icons/paypal-logo.png'),
        );
      default:
        return Container();
    }
  }
}
