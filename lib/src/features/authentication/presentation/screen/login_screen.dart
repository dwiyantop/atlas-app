import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_headline_text.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';
import 'package:atlas_pos/src/features/authentication/presentation/widget/login_form.dart';

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
          padding: AppStyles.defaultPaddingInsetsAll,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AtlasHeadlineText(
                'Welcome Back!',
                size: AtHeadlineTextSize.xs,
                weight: AtHeadlineTextWeight.bold,
              ),
              SizedBox(
                height: 4.0,
              ),
              AtlasBodyText(
                'Please login to continue manage your dashboard.',
                size: AtBodyTextSize.sm,
              ),
              SizedBox(
                height: 16.0 * 2,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
