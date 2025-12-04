import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo/core/common/ui_widgets/app_elevated_button.dart';
import 'package:turbo/core/common/ui_widgets/app_text_filed.dart';

import 'package:turbo/features/auth/data/models/requst_model/login_request_model.dart';
import 'package:turbo/features/auth/modules/common/password_textfield.dart';
import 'package:turbo/features/auth/modules/login/cubit/auth_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            hintText: "Enter your email address",
            label: "Email Address",
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Invalid Email";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 20),
          PasswordTextfield(controller: passwordController),
          const SizedBox(height: 10),
          Row(
            children: [
              Checkbox(value: true, onChanged: (val) {}),
              const Text("Remember Me"),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return AppElevatedButton(
                isLoading: state is AuthLoading,
                onPressed: () {
                  // log("here");
                  log("test");
                  if (formKey.currentState!.validate()) {
                    context.read<AuthCubit>().login(
                      LoginRequestModel(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  }
                },
                title: "Login",
              );
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // LoginBlocListener(),
        ],
      ),
    );
  }
}
