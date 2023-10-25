import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: AppColors.black,
        ),
      ),
    );
  }
}
