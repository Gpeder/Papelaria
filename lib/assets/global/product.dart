import 'package:app_loja/assets/components/card_product.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                Row(
                  children: [
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                    SizedBox(width: 10,),
                    CustomCardProduct(productName: 'produto', productPrice: 'R\$ 100', imagePath: 'lib/assets/images/avatar.jpg'),
                  ],
                ),
                  ],
                ),
              )
              
            ]
          ),
        ],
      ),
    );
  }
}
