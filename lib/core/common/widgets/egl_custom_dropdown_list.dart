// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class EglCustomDropdownList extends StatefulWidget {
  const EglCustomDropdownList({
    required this.width,
    this.style,
    this.arrowColor,
    super.key,
  });
  final double width;
  final TextStyle? style;
  final Color? arrowColor;
  @override
  State<EglCustomDropdownList> createState() => _EglCustomDropdownListState();
}

class _EglCustomDropdownListState<T> extends State<EglCustomDropdownList> with SingleTickerProviderStateMixin {
  OverlayEntry? overlay;
  var _expanded = false;
  late AnimationController controller;
  late Animation<double> arrowAngle;

  final layerLink = LayerLink();
  final GlobalKey _widgetKey = GlobalKey();

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    controller.addListener(() {
      setState(() {});
    });
    arrowAngle = Tween<double>(
      begin: 0,
      end: pi,
    ).animate(controller);

    super.initState();
  }

  Size _getWidgetSize() {
    // Verifica si el widget está montado.
    if (_widgetKey.currentContext != null) {
      // Obtén el RenderBox del widget.
      final RenderBox renderBox = _widgetKey.currentContext!.findRenderObject() as RenderBox;
      // Obtén el tamaño.
      final Size size = renderBox.size;
      return size;
    }
    return const Size(0, 0);
  }

  void _changeExpansionStatus() {
    if (_expanded) {
      _removeOverlay();
    } else {
      _insertOverlay(context);
    }

    setState(() {
      _expanded = !_expanded;
      _expanded ? controller.forward() : controller.reverse(); //so that the animation starts every time the button is pressed
    });
  }

  void _removeOverlay() {
    overlay?.remove();
  }

  void _insertOverlay(BuildContext context) {
    Size size = _getWidgetSize();

    overlay = OverlayEntry(
      builder: (context) => Positioned(
        width: widget.width,
        child: _OverlayDropdown(
          link: layerLink,
          width: double.infinity,
          yAxisOffset: size.height,
        ),
      ),
    );

    Overlay.of(context).insert(overlay!);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: GestureDetector(
        onTap: _changeExpansionStatus,
        child: Container(
          // height: 42,
          key: _widgetKey, // Asigna el GlobalKey al widget.
          padding: const EdgeInsets.all(12),
          // width: widget.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'some small text',
                  style: widget.style,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Transform.rotate(
                angle: arrowAngle.value,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                  color: widget.arrowColor ?? Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OverlayDropdown extends StatelessWidget {
  final LayerLink link;
  final double width;
  final double yAxisOffset;
  const _OverlayDropdown({
    required this.link,
    required this.yAxisOffset,
    this.width = double.infinity,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return CompositedTransformFollower(
      offset: Offset(0, yAxisOffset + 0.2),
      link: link,
      child: Material(
        child: Container(
          width: width,
          color: Colors.green,
          child: const Text('Overlay'),
        ),
      ),
    );
  }
}
