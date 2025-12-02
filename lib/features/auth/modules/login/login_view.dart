import 'package:flutter/material.dart';
import 'package:turbo/features/auth/modules/login/widget/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              const Text(
                "Hello, Welcome Back 👋",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                "Happy to see you again, please login here.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
