import 'package:app_loja/assets/components/banner.dart';
import 'package:app_loja/assets/components/card_product.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 30),
            Container(
                padding: const EdgeInsets.only(left: 20,),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Categorias',
                          style: AppTextStyles.Text30,
                        ),
                        SizedBox(width: 190),
                      Icon(Icons.menu_book),
                      SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 20),
                    BannerProduct(),
                    SizedBox(height: 20),
                    Text(
                      'Mais Vendidos',
                      style: AppTextStyles.Text30,
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      CustomCardProduct(
                        productName: 'Produto1',
                        productPrice: 'R\$ 10,00',
                        imagePath: 'lib/assets/images/avatar.jpg',
                      ),
                      SizedBox(width: 10),
                      CustomCardProduct(
                        productName: 'Produto1',
                        productPrice: 'R\$ 10,00',
                        imagePath: 'lib/assets/images/avatar.jpg',
                      ),
                    ]),
                    SizedBox(height: 20),
                    Text(
                      'Promoção',
                      style: AppTextStyles.Text30,
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      CustomCardProduct(
                        productName: 'Produto1',
                        productPrice: 'R\$ 10,00',
                        imagePath: 'lib/assets/images/avatar.jpg',
                      ),
                      SizedBox(width: 10),
                      CustomCardProduct(
                        productName: 'Produto1',
                        productPrice: 'R\$ 10,00',
                        imagePath: 'lib/assets/images/avatar.jpg',
                      ),
                    ]),
                  ],
                )),
            const SizedBox(height: 20),
            const CustomBanner(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardProduct1(),
                SizedBox(width: 30),
                CardProduct1(),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
