import 'package:app_loja/assets/components/colors.dart';
import 'package:app_loja/assets/components/text.dart';
import 'package:flutter/material.dart';

class PrymaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text; 

  const PrymaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });



  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Ink(
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            child: Text(
              text, 
              style: AppTextStyles.Text20,
            ),
          ),
        ),
      ),
    );
  }
}


class SecundaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text; 

  const SecundaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });



  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: AppColors.secondary, width: 1 ),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            child: Text(
              text, 
              style: AppTextStyles.Text20,
            ),
          ),
        ),
      ),
    );
  }
}