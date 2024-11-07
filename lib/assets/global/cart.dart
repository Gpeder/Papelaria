import 'package:app_loja/assets/components/colors.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            backgroundColor: AppColors.backgroud,


      body: Center(
        child: Text('Cart'),),
    );
  }
}