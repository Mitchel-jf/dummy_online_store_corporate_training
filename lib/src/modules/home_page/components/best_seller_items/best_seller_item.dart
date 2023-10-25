import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:dummy_online_store/src/global_widgets/carousel_card.dart';
import 'package:flutter/material.dart';

import 'product_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.productName,
    required this.productRating,
  });

  final String productName;
  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 160,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(.2),
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        children: [
          const CarouselCard(
            padding: EdgeInsets.zero,
            color: AppColors.blue,
            iconSize: 40,
            width: 110,
            height: 100,
          ),
          ProductRating(
            productName: productName,
            productRating: productRating,
          ),
        ],
      ),
    );
  }
}
