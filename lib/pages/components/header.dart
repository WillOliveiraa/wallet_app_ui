import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
                text: 'My ',
                children: [
                  TextSpan(
                    text: 'Cards',
                    style:
                        GoogleFonts.nunito(color: Colors.black87, fontSize: 26),
                  )
                ]),
          ),
          InkWell(
            onTap: () => debugPrint('add'),
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                color: Color(0xFFe6edfa),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
