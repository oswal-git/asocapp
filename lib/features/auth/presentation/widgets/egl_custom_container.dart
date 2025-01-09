import 'package:asocapp/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class EglCustomContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsets? padding;
  final bool error;

  const EglCustomContainer({
    super.key,
    required this.child,
    this.padding,
    this.error = false,
  });

  @override
  State<EglCustomContainer> createState() => _EglCustomContainerState();
}

class _EglCustomContainerState extends State<EglCustomContainer> {
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focus) {
        setState(() {
          hasFocus = focus;
        });
      },
      child: Container(
        padding: widget.padding ?? const EdgeInsets.all(0), // Espaciado interno
        decoration: AppTheme.buildDecoration(hasError: widget.error, hasFocus: hasFocus),
        child: widget.child,
      ),
    );
  }
}
