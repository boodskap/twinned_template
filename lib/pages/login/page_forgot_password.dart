import 'package:flutter/material.dart';
import 'package:twinned_template/core/constants.dart';
import 'package:twinned_template/widgets/commons/userid_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/app_logo.png',
                height: 110,
                width: 110,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Reset Your Password',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: UseridField(
                hintText: "Enter your email",
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    minimumSize: const Size(150, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: primaryColor)),
                  ),
                  onPressed: () {
                    widget.pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: primaryColor),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(100, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: secondaryColor)),
                  ),
                  onPressed: () {
                    widget.pageController.animateToPage(3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: const Text(
                    'Generate OTP',
                    style: TextStyle(color: secondaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't you have an account ? ",
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    widget.pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Sign Up!",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue.shade500,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Powered By",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
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
