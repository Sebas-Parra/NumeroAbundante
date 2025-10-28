import 'package:flutter/material.dart';

class NumberImput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const NumberImput({super.key, required this.controller,required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        )
      ),
      keyboardType: TextInputType.number,
    );
  }
}