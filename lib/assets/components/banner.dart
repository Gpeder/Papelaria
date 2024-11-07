import 'package:flutter/material.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: PageView(
        scrollDirection: Axis.horizontal, 
        children: [
          Image.asset('lib/assets/images/logo.png', fit: BoxFit.cover),
          Image.asset('lib/assets/images/logo.png', fit: BoxFit.cover),
          Image.asset('lib/assets/images/logo.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
