import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome back,", style: AppStyles.body),
        Text("Samantha William", style: AppStyles.header),
      ],
    );
  }
}
