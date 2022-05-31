import 'package:flutter/material.dart';
import 'package:wallet_app_ui/shared/app_colors.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.color,
    this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Image.asset(image),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 18,
          color: Color(0xFFbfc3d0),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            Text(
              subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
