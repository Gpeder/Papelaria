import 'package:app_loja/assets/components/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final void Function(int value) onTap;

  const CustomBottomBar({super.key, required this.onTap});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      iconSize: 30,
        currentIndex: selectedIndex,
        backgroundColor: AppColors.backgroud,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondary.withOpacity(0.4),
        onTap: (value) {
          widget.onTap(value);
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              activeIcon: Icon(Icons.shopping_bag),
              label: 'Produtos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person_2),
              label: 'Perfil'),
        ]);
  }
}
