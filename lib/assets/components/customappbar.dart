import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:app_loja/assets/global/cart.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 320,
            height: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
              border: Border.all(
                color: AppColors.primary,
                width: 2,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Busca', style: AppTextStyles.Text20),
                SizedBox(width: 8),
                Icon(
                  Icons.search,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
          const SizedBox(width: 2),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}

class CustomAppBarCart extends StatelessWidget {
  const CustomAppBarCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
          ),
          const SizedBox(
            width: 100,
          ),
          const Text('Appbar', style: AppTextStyles.Text30),
        ],
      ),
    );
  }
}
