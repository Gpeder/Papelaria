import 'package:app_loja/assets/components/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      enabled: false, // Desabilita a edição do campo
      decoration: InputDecoration(
        labelText: label,
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
