import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';


class CardProduct extends StatelessWidget {
  final String nomeProduto;
  final String preco;
  final String imagemAsset;

  const CardProduct({
    super.key,
    required this.nomeProduto,
    required this.preco,
    required this.imagemAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 4,  
          borderRadius: BorderRadius.circular(8),  
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(imagemAsset), 
                fit: BoxFit.cover, 
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),  
        Text(
          nomeProduto,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          preco,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}


class CardProduct1 extends StatelessWidget {
  const CardProduct1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage('lib/assets/images/logo.png'), 
              fit: BoxFit.cover, 
            ),
          ),
        ),
        const Text('Nome do produto', style: AppTextStyles.Text12,),
        const Text('Preço', style: AppTextStyles.Text12,),
      ],
    );
  }
}


class CustomCircleAvatar extends StatelessWidget {
  final String imagePath;


  const CustomCircleAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(imagePath),
    );
  }
}



class CustomCardProduct extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String imagePath;

  const CustomCardProduct({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 180,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath), 
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          productName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          productPrice,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
