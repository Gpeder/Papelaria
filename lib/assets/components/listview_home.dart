import 'package:app_loja/assets/components/banner.dart';
import 'package:app_loja/assets/components/card_product.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Promoção 🔥', style: AppTextStyles.Text30,),
        SizedBox(height: 10,),
        Row(
          children: [
            CardProduct1(),
            SizedBox(width: 10,),
            CardProduct1(),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            CardProduct1(),
            SizedBox(width: 10,),
            CardProduct1(),
          ],
        ),
        SizedBox(height: 16,),
        Text('Mais vendidos 🤩', style: AppTextStyles.Text30,),
        SizedBox(height: 10,),
      BannerProduct(),
      SizedBox(height: 16,),
      Text('Descobertas do dia 🔍', style: AppTextStyles.Text30,),
      ],
    );
  }
}