import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class DropdownButtonItem {
  final int id;
  final String text;
  final Widget? icon;

  DropdownButtonItem({required this.id, required this.text, this.icon});
}

class EglDropdownButtonWidget extends StatefulWidget {
  final String hintText;
  final List<DropdownButtonItem> items;
  final ValueChanged<int?> onChanged;
  final int? initialValue;

  const EglDropdownButtonWidget({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.initialValue,
  });

  @override
  State<EglDropdownButtonWidget> createState() => _EglDropdownButtonWidgetState();
}

class _EglDropdownButtonWidgetState extends State<EglDropdownButtonWidget> {
  int? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      icon: const Icon(Icons.arrow_drop_down, color: AppPallete.foregroundColor),
      dropdownColor: AppPallete.backgroundSecondaryColor,
      value: _selectedValue,
      onChanged: (value) {
        setState(() {
          _selectedValue = value;
        });
        widget.onChanged(value!);
      },
      // validator: (value) {
      //   if (value == null) {
      //     return "${widget.hintText} is missing!";
      //   }
      //   return null;
      // },
      // decoration: InputDecoration(
      //   hintText: widget.hintText,
      // ),
      items: widget.items.map((item) {
        return DropdownMenuItem<int>(
          value: item.id,
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
