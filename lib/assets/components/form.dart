import 'package:app_loja/assets/components/button.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/global/root.dart';
import 'package:flutter/material.dart';

class Cform extends StatelessWidget {
  const Cform({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 1.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondary, width: 1.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Sua Senha',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 1.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondary, width: 1.0),
              ),
            ),
          ),
          const SizedBox(height: 16,),
          PrymaryButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RootPage()),
              );
          }, text: 'Entrar',),
          const SizedBox(height: 16,),
          SecundaryButton(onPressed: (){}, text: 'Cadastrar',),
        ],
      ),
    );
  }
}
