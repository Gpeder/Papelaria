import 'package:app_loja/assets/components/bottom_bar.dart';
import 'package:app_loja/assets/global/home.dart';
import 'package:app_loja/assets/global/product.dart';
import 'package:app_loja/assets/global/profile.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
final contoler = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: contoler,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          Product(),
          Profile(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(onTap: (value) {
        print(value);
        contoler.jumpToPage(value);
      }),
    );
  }
}