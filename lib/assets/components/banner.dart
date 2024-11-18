import 'package:app_loja/assets/components/card_product.dart';
import 'package:flutter/material.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 10,),
          CustomCircleAvatar(imagePath: '',),
          SizedBox(width: 10,),
          CustomCircleAvatar(imagePath: '',),
          SizedBox(width: 10,),
            CustomCircleAvatar(imagePath: '',),
          SizedBox(width: 10,),
            CustomCircleAvatar(imagePath: '',),
          SizedBox(width: 10,),
            CustomCircleAvatar(imagePath: '',),
          SizedBox(width: 10,),
        ],
        
      ),
    );
  }
}




class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: double.infinity,
      color: Colors.red,
    );
  }
}


