import 'package:flutter/material.dart';

class AtlasTextField extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final TextInputType keyboardType;
  final String? initialValue;
  final String? Function(String?)? validators;
  final AutovalidateMode? autovalidateMode;
  final ValueChanged<String>? onChanged;

  const AtlasTextField({
    super.key,
    this.label,
    this.placeholder,
    this.keyboardType = TextInputType.text,
    this.initialValue = '',
    this.validators,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: initialValue);

    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: placeholder,
      ),
      autovalidateMode: autovalidateMode,
      validator: validators,
      onChanged: onChanged,
    );
  }
}
