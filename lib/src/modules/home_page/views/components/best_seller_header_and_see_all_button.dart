import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BestSellerHeaderAndSeeAllButton extends StatelessWidget {
  const BestSellerHeaderAndSeeAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Seller",
          style: AppStyles.header.copyWith(fontSize: 18),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: AppStyles.body.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
          ),
        )
      ],
    );
  }
}
