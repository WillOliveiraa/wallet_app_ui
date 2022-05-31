import 'package:flutter/material.dart';
import 'package:wallet_app_ui/shared/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFbfc3d0).withOpacity(0.2),
                blurRadius: 5,
                offset: const Offset(0, 10),
              ),
            ],
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.black26,
            //     offset: Offset(0.0, 2.0),
            //     blurRadius: 4.0,
            //   ),
            // ],
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1.1,
                color: const Color(0xFFbfc3d0),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1.1,
                  color: const Color(0xFFbfc3d0),
                ),
              ),
              child: Image.asset(image),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryTextColor,
          ),
        )
      ],
    );
  }
}
