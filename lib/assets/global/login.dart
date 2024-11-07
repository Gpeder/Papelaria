import 'package:app_loja/assets/components/form.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 243, 244),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100),
            SizedBox(
              width: 250,
              height: 250,
                child: Image(
              image: AssetImage('lib/assets/images/logo.png'),
            )),
            SizedBox(height: 16),
            Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Cform(),
                    ]))
          ],
        ),
      ),
    );
  }
}
