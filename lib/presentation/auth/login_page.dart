import 'package:flutter/material.dart';
import 'package:todo_app/widgets/font_custom.dart';
import 'package:todo_app/widgets/string_custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  StringCustom stringCustom = StringCustom();
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void dispose() {
    super.dispose();

    emailController!.dispose();
    passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FontRoboto(
              text: stringCustom.greeting,
              size: 24,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              alignment: TextAlign.start,
            ),
            const SizedBox(height: 8),
            FontRoboto(
              text: stringCustom.bodyLogin,
              size: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white70,
              alignment: TextAlign.start,
            ),
            const SizedBox(height: 16),
            Center(
              child: Image.asset('assets/png/logo_white.png'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: stringCustom.hintEmail),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(labelText: stringCustom.hintEmail),
            ),
          ],
        ),
      ),
    );
  }
}
