import 'package:flutter/material.dart';

class AtlasPasswordField extends StatefulWidget {
  final String? label;
  final String? placeholder;
  final String? initialValue;
  final String? Function(String?)? validators;
  final ValueChanged<String>? onChanged;

  const AtlasPasswordField({
    super.key,
    required this.label,
    this.placeholder,
    this.initialValue,
    this.validators,
    this.onChanged,
  });

  @override
  State<AtlasPasswordField> createState() => _AtlasPasswordFieldState();
}

class _AtlasPasswordFieldState extends State<AtlasPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: widget.initialValue);

    return TextFormField(
      controller: controller,
      obscureText: _obscureText,
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
              debugPrint(_obscureText.toString());
            });
          },
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validators,
      onChanged: widget.onChanged,
    );
  }
}
