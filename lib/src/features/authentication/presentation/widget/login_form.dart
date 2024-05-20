import 'package:atlas_pos/src/features/authentication/presentation/provider/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:atlas_pos/src/utils/keyboard_helper.dart';
import 'package:atlas_pos/src/core/presentation/form/text_field.dart';
import 'package:atlas_pos/src/core/presentation/form/password_field.dart';
import 'package:atlas_pos/src/core/presentation/utils/elevated_button.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local_payload.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    const formPayload = AuthenticationLocalPayload(
      email: 'top-level@dwiyan.top',
      password: 'Q1w2e3r4!!',
    );

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final authenticationProvider = Provider.of<AuthenticationProvider>(
      context,
      listen: true,
    );

    void loginProcess() {
      const formPayload = AuthenticationLocalPayload(
        email: 'top-level@dwiyan.top',
        password: 'Q1w2e3r4!!',
      );

      KeyboardHelper.hideKeyboard(context);
      formKey.currentState!.validate();
      authenticationProvider.authenticationLocal(formPayload);
    }

    return Form(
      key: formKey,
      child: Column(
        children: [
          AtlasTextField(
            label: 'Email',
            placeholder: 'Your email address',
            initialValue: formPayload.email,
            validators: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: 'Email address cannot be empty'),
              FormBuilderValidators.email(errorText: 'Email requires a valid email address'),
            ]),
            onChanged: (value) {
              debugPrint(value);
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          AtlasPasswordField(
            label: 'Password',
            placeholder: 'Your password',
            initialValue: formPayload.password,
            validators: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: 'Password cannot be empty'),
            ]),
            onChanged: (value) {
              debugPrint(value);
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          AtlasElevatedButton(
            'Login',
            onPressed: loginProcess,
            loading: authenticationProvider.isLoading,
          ),
        ],
      ),
    );
  }
}
