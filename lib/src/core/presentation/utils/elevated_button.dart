import 'package:flutter/material.dart';

class AtlasElevatedButton extends StatelessWidget {
  final String text;
  final double? width;
  final IconData? leadingIcon;
  final bool loading;
  final VoidCallback? onPressed;

  const AtlasElevatedButton(
    this.text, {
    super.key,
    this.width = double.infinity,
    this.leadingIcon,
    this.loading = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final elevatedButtonTheme = ElevatedButtonTheme.of(context);
    final foregroundColor = elevatedButtonTheme.style!.foregroundColor?.resolve({});

    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) ...[
              Icon(
                leadingIcon,
                color: foregroundColor,
                size: 18.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
            ],
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (loading) ...[
              const SizedBox(
                width: 12.0,
              ),
              SizedBox(
                width: 18.0,
                height: 18.0,
                child: CircularProgressIndicator(
                  color: foregroundColor,
                  strokeWidth: 2.0,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
