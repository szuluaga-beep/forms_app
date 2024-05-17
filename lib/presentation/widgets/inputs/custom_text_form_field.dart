import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(40));

    return TextFormField(
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'el campo es requerido';
        if (value.isEmpty) return 'el campo es requerido';
        if (value.trim().isEmpty) return 'el campo es requerido';

        return null;
      },
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary))),
    );
  }
}
