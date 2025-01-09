import 'package:asocapp/core/theme/app_font_style.dart';
import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:asocapp/features/auth/presentation/widgets/egl_custom_container.dart';
import 'package:flutter/material.dart';

class Item {
  final int id;
  final IconData? icon;
  final String text;

  Item({
    this.icon,
    required this.id,
    required this.text,
  });
}

class EglCustomDropListWidget extends StatefulWidget {
  final List<Item> items;
  final String hintText;
  final ValueChanged<Item?>? onChanged;
  final bool hasError; // Indica si hay un error

  const EglCustomDropListWidget({
    super.key,
    required this.items,
    required this.hintText,
    this.onChanged,
    this.hasError = false, // Valor predeterminado es false,
  });

  @override
  State<EglCustomDropListWidget> createState() => _EglCustomDropListWidgetState();
}

class _EglCustomDropListWidgetState extends State<EglCustomDropListWidget> {
  Item? selectedItem;
  bool isDropdownOpen = false;
  OverlayEntry? overlayEntry;

  void toggleDropdown() {
    if (isDropdownOpen) {
      closeDropdown();
    } else {
      openDropdown();
    }
  }

  void openDropdown() {
    overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(overlayEntry!);
    setState(() {
      isDropdownOpen = true;
    });
  }

  void closeDropdown() {
    overlayEntry?.remove();
    overlayEntry = null;
    setState(() {
      isDropdownOpen = false;
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    double top = offset.dy + renderBox.size.height + 2; // Justo debajo del campo

    return OverlayEntry(
      builder: (context) {
        return Positioned(
          left: offset.dx,
          right: offset.dx,
          top: top,
          child: Material(
            elevation: 4.0,
            child: EglCustomContainer(
              child: Column(
                children: widget.items.map((item) {
                  return GestureDetector(
                    onTap: () {
                      selectItem(item);
                      if (widget.onChanged != null) {
                        widget.onChanged!(item);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          if (item.icon != null) Icon(item.icon) else const SizedBox(width: 24), // Espacio para el icono
                          const SizedBox(width: 8),
                          Expanded(
                              // Asegura que el texto ocupe el espacio disponible
                              child: Text(item.text)),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item;
      closeDropdown(); // Cierra el dropdown al seleccionar un item
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: toggleDropdown,
          child: EglCustomContainer(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            error: widget.hasError,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (selectedItem?.icon != null) Icon(selectedItem!.icon, color: AppPallete.hintStyle),
                    if (selectedItem?.icon != null) const SizedBox(width: 8),
                    Text(
                      selectedItem?.text ?? widget.hintText,
                      style: selectedItem == null
                          ? AppFontStyle.semibold12_5.copyWith(color: AppPallete.hintColor)
                          : AppFontStyle.semibold12_5.copyWith(color: AppPallete.whiteColor),
                    ),
                  ],
                ),
                Icon(
                  isDropdownOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
