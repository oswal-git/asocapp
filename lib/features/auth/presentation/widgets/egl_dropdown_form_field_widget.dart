// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:asocapp/core/theme/app_pallete.dart';

class DropdownFromFieldItem {
  final int id;
  final String text;
  final Widget? icon;

  DropdownFromFieldItem({required this.id, required this.text, this.icon});
}

class EglDropdownFormField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final List<DropdownFromFieldItem> items;
  final ValueChanged<int?> onChanged;
  final String currentValue;
  final IconData? iconLabel;

  const EglDropdownFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.items,
    required this.onChanged,
    required this.currentValue,
    this.iconLabel,
  });

  @override
  State<EglDropdownFormField> createState() => _EglDropdownFormFieldState();
}

class _EglDropdownFormFieldState extends State<EglDropdownFormField> {
  String _selectedValue = '';

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.currentValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: const Icon(Icons.arrow_drop_down, color: AppPallete.foregroundColor),
      dropdownColor: AppPallete.backgroundSecondaryColor,
      value: _selectedValue != "" ? _selectedValue : null,
      hint: Padding(
        padding: EdgeInsets.only(left: widget.iconLabel == null ? 0.0 : 18.0),
        child: Text(widget.hintText),
      ),
      onChanged: (value) {
        setState(() {
          _selectedValue = value!;
        });
        widget.onChanged(int.parse(value!));
      },
      validator: (value) {
        if (value == null) {
          return "${widget.hintText} is missing!";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: const EdgeInsets.only(left: 0, right: 27, top: 27, bottom: 27),
      ),
      items: widget.items.map((item) {
        return DropdownMenuItem<String>(
          value: item.id.toString(),
          child: Row(
            children: [
              if (item.icon != null) ...[item.icon!, const SizedBox(width: 8)],
              Text(item.text, style: const TextStyle(color: AppPallete.foregroundColor)),
            ],
          ),
        );
      }).toList(),
    );
  }
}
