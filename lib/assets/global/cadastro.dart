import 'package:app_loja/assets/components/button.dart';
import 'package:app_loja/assets/components/form.dart';
import 'package:app_loja/assets/global/root.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 243, 244),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
                width: 250,
                height: 250,
                child: Image(
                  image: AssetImage('lib/assets/images/logo.png'),
                )),
            const SizedBox(height: 16),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        labelText: 'Nome',
                        obscureText: false,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Sobrenome',
                        obscureText: false,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Email',
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Senha',
                        obscureText: true,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Confirmar Senha',
                        obscureText: true,
                        keyboardType: TextInputType.number,
                      ),
                    ])),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              child: PrymaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RootPage()),
                    );
                  },
                  text: 'Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
