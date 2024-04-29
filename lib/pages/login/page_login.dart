import 'package:flutter/material.dart';
import 'package:twinned_template/core/constants.dart';
import 'package:twinned_template/pages/home/sidemenu.dart';
import 'package:twinned_template/widgets/commons/password_field.dart';
import 'package:twinned_template/widgets/commons/userid_field.dart';

class LoginPage extends StatefulWidget {
  static const String name = 'signin';
  final PageController pageController;
  const LoginPage({super.key, required this.pageController});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/images/app_logo.png',
          height: 110,
          width: 110,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.white70,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                UseridField(
                    hintText: "Enter your mail", controller: _userController),
                const SizedBox(
                  height: 10,
                ),
                PasswordField(
                    hintText: "Enter your password",
                    controller: _passwordController),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            InkWell(
              child: const Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                widget.pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: primaryColor)),
                  minimumSize: const Size(140, 40),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: primaryColor),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: const Size(140, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: const BorderSide(color: secondaryColor)),
              ),
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SideMenu()));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
                onPressed: () {
                  widget.pageController.jumpToPage(1);
                },
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Powered By",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                "assets/images/poweredby.png",
                width: 150,
              )
            ],
          ),
        ),
      ],
    );
  }
}
