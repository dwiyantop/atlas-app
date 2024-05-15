import 'package:atlas_pos/src/features/login/presentation/login_form.dart';
import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_headline_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: AppStyles.defaultPaddingInsets,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AtlasHeadlineText(
                'Login',
                size: AtHeadlineTextSize.xs,
                weight: AtHeadlineTextWeight.semiBold,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
