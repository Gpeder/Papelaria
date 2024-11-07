import 'package:app_loja/assets/components/button.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:app_loja/assets/components/formulario.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomAppBar(),
        const SizedBox(height: 20),
        const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('lib/assets/images/avatar.jpg'),
          ),
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const CustomTextFormField(label: 'Nome'),
              const SizedBox(height: 16),
              const CustomTextFormField(label: 'Email'),
              const SizedBox(height: 16),
              const CustomTextFormField(label: 'Telefone'),
              const SizedBox(height: 16),
              const CustomTextFormField(label: 'Endereço'),
              const SizedBox(height: 16),
              PrymaryButton(onPressed: (){}, text: 'Salvar'),
            ],
          ),
          )
      ],
    );
  }
}