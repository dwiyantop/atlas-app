import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:atlas_pos/src/theme/input_decoration_theme.dart';

class AtlasTextField extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final Widget? prefixIcon;
  final String? prefixIconIconify;
  final Widget? suffixIcon;
  final String? suffixIconIconify;
  final TextInputType keyboardType;
  final String? initialValue;
  final String? Function(String?)? validators;
  final AutovalidateMode? autovalidateMode;
  final ValueChanged<String>? onChanged;

  const AtlasTextField({
    super.key,
    this.label,
    this.placeholder,
    this.prefixIcon,
    this.prefixIconIconify,
    this.suffixIcon,
    this.suffixIconIconify,
    this.keyboardType = TextInputType.text,
    this.initialValue = '',
    this.validators,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final iconIconifyColor = isDarkTheme ? darkIconColor : lightIconColor;

    TextEditingController controller = TextEditingController(text: initialValue);

    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: prefixIcon != null || prefixIconIconify != null
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  right: 8.0,
                  bottom: 8.0,
                  left: 12.0,
                ),
                child: prefixIconIconify != null
                    ? Iconify(
                        prefixIconIconify!,
                        color: iconIconifyColor,
                      )
                    : prefixIcon,
              )
            : null,
        suffixIcon: suffixIcon != null || suffixIconIconify != null
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  right: 12.0,
                  bottom: 8.0,
                  left: 8.0,
                ),
                child: suffixIconIconify != null
                    ? Iconify(
                        suffixIconIconify!,
                        color: iconIconifyColor,
                      )
                    : suffixIcon,
              )
            : null,
      ),
      autovalidateMode: autovalidateMode,
      validator: validators,
      onChanged: onChanged,
    );
  }
}
