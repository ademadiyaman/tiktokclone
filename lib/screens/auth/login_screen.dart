import 'package:flutter/material.dart';
import 'package:tiktok_clone_2/Constants/constants.dart';
import 'package:tiktok_clone_2/widgets/input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TikTok Clone',
              style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'E Mail',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Password',
                icon: Icons.password_outlined,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () {
                  print('Login User');
                },
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have an account?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('navigating user');
                  },
                  child: Text(
                    ' Register',
                    style: TextStyle(fontSize: 15, color: buttonColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
