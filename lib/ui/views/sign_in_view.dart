import 'package:flutter/material.dart';
import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/view_models/sign_in_view_model.dart';
import 'package:test_arc/ui/route_navigation.dart';
import 'package:test_arc/ui/shared/ui_helpers.dart';
import 'package:test_arc/ui/views/base_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SignInViewModel>(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(UIHelper.bigPadding(context)),
          child: Form(
            key: model.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Mobile Number'),
                  controller: model.mobileNumberController,
                  validator: (value) => model.mobileNumberValidator(value!),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Password'),
                  controller: model.passwordController,
                  validator: (value) => model.passwordValidator(value!),
                ),
                SizedBox(
                  height: UIHelper.extraBigSpacing(context),
                ),
                model.state == ViewState.idle
                    ? ElevatedButton(
                        onPressed: () async {
                          if (model.formKey.currentState!.validate()) {
                            if (await model.signIn()!) {
                              Navigator.pushNamed(context, RouteNavigation.profiles);
                            }
                          }
                        },
                        child: const Text('Sign In'),
                      )
                    : const CircularProgressIndicator(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
