import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.grey.withOpacity(.1),
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Icon(
            icon,
            color: AppColors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(text),
        )
      ],
    );
  }
}
