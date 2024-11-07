import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/customappbar.dart';
import 'package:app_loja/assets/components/listview_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CustomAppBar(),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ListViewHome(),
        ),
      ]),
    );
  }
}
