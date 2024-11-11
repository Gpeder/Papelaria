import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/logo.png'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,),
              Text(
                'Nome do produto',
                style: AppTextStyles.Text20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'R\$ 10,00',
                style: AppTextStyles.Text12,
              ),
            ],
          ),
          const SizedBox(
            width: 10,),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            width: 50,
            height: 50,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete, color: AppColors.backgroud,),
              iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
