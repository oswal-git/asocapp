import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class EglInputTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  const EglInputTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  State<EglInputTextFieldWidget> createState() => _EglInputTextFieldWidgetState();
}

class _EglInputTextFieldWidgetState extends State<EglInputTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(color: AppPallete.foregroundColor),
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "${widget.hintText} is missing!";
        }
        return null;
      },
      obscureText: widget.isObscureText,
    );
  }
}
