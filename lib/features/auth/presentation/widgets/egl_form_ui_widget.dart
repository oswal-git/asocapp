import 'package:asocapp/core/utils/extensions.dart';
import 'package:asocapp/features/auth/presentation/widgets/egl_custom_drop_list_widget.dart';
import 'package:asocapp/features/auth/presentation/widgets/egl_input_text_field_widget.dart';
// import 'package:asocapp/features/auth/presentation/widgets/egl_input_text_field_widget.dart';
import 'package:asocapp/generated/l10n.dart';
import 'package:flutter/material.dart';

class EglFormUIWidget extends StatefulWidget {
  const EglFormUIWidget({super.key, required this.context});

  final BuildContext context;

  @override
  State<EglFormUIWidget> createState() => _EglFormUIWidgetState();
}

class _EglFormUIWidgetState extends State<EglFormUIWidget> {
  final asociationController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String idAsociaton = '';

  List<Item> listItems = [
    Item(id: 1, icon: Icons.home, text: 'Casa'),
    Item(id: 2, icon: Icons.work, text: 'Trabajo'),
    Item(id: 3, icon: Icons.school, text: 'Escuela'),
    Item(id: 4, text: 'Sin icono'), // Elemento sin icono
  ];

  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).tRegisterUser,
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              20.ph,
              EglCustomDropListWidget(
                items: listItems,
                // labelText: S.of(context).lAsociation,
                hintText: S.of(context).hSelectAsociation,
              ),
              20.ph,
              EglInputTextFieldWidget(
                controller: nameController,
                hintText: S.of(context).hUserName,
              ),
              20.ph,
              EglInputTextFieldWidget(
                controller: passwordController,
                hintText: S.of(context).hPassword,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

enum OptionsPru {
  option_1,
  option_2,
  option_3,
  option_4,
}
