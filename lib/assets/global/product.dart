import 'package:app_loja/assets/components/banner.dart';
import 'package:app_loja/assets/components/card_product.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const BannerProduct(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Destaques da semana',
                style: AppTextStyles.Text30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 1',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 2',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 3',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 4',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 5',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 6',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 4',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 5',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 6',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 4',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 5',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 6',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 4',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 5',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 6',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  children: [
                    CardProduct(
                      nomeProduto: 'Produto 4',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 5',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardProduct(
                      nomeProduto: 'Produto 6',
                      preco: 'R\$ 10,00',
                      imagemAsset: 'lib/assets/images/logo.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
