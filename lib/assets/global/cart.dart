import 'package:app_loja/assets/components/cart_card.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Column(
        children: [
          CustomAppBarCart(),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartCard(),
                CartCard(),
                CartCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
