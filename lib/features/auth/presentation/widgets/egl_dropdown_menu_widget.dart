import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class DropdownItem {
  final int id;
  final String text;
  final Widget? icon;

  DropdownItem({required this.id, required this.text, this.icon});
}

class EglDropdownMenuWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? initialValue;

  const EglDropdownMenuWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.initialValue,
  });

  @override
  State<EglDropdownMenuWidget> createState() => _EglDropdownMenuWidgetState();

  toList() {}
}

class _EglDropdownMenuWidgetState extends State<EglDropdownMenuWidget> {
  String? _selectedValue;
  List<DropdownMenuEntry<String>> dropdownMenuEntries = <DropdownMenuEntry<String>>[];

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      // controller: widget.controller,
      leadingIcon: const Icon(Icons.apple, color: AppPallete.foregroundColor),
      trailingIcon: const Icon(Icons.arrow_drop_down, color: AppPallete.foregroundColor),
      selectedTrailingIcon: const Icon(Icons.arrow_drop_up, color: AppPallete.foregroundColor),
      // menuHeight: 50,
      width: 300,
      // // dropdownColor: AppPallete.backgroundSecondaryColor,
      initialSelection: _selectedValue,
      // label: const Text('Asociations'),
      // hintText: widget.hintText,
      // requestFocusOnTap: true,
      // enableFilter: true,
      textStyle: const TextStyle(color: AppPallete.borderColor),
      dropdownMenuEntries: widget.items.map<DropdownMenuEntry<String>>(
        (String item) {
          final menuItem = DropdownMenuEntry<String>(
            value: item,
            label: item,
            // leadingIcon: item.icon,
          );
          return menuItem;
        },
      ).toList(),
      onSelected: (value) {
        setState(() {
          _selectedValue = value;
        });
        widget.onChanged(value);
      },
      // validator: (value) {
      //   if (value == null) {
      //     return "${widget.hintText} is missing!";
      //   }
      //   return null;
      // },
      // decoration: InputDecoration(
      // ),
    );
  }
}
