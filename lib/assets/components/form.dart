import 'package:flutter/material.dart';
import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/button.dart';
import 'package:app_loja/assets/global/cadastro.dart';
import 'package:app_loja/assets/global/root.dart';


class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.keyboardType,
    this.obscureText = false, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.0),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary, width: 1.0),
        ),
      ),
    );
  }
}

class Cform extends StatelessWidget {
  const Cform({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomTextField(
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(
            labelText: 'Sua Senha',
            keyboardType: TextInputType.number,
            obscureText: true, 
          ),
          const SizedBox(height: 16),
          // Botão de login
          PrymaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RootPage()),
              );
            },
            text: 'Entrar',
          ),
          const SizedBox(height: 16),
          // Botão de cadastro
          SecundaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cadastro()),
              );
            },
            text: 'Cadastrar',
          ),
        ],
      ),
    );
  }
}
