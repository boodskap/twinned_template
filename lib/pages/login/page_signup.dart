import 'package:flutter/material.dart';
import 'package:twinned_template/core/constants.dart';
import 'package:twinned_template/widgets/commons/userid_field.dart';
import 'package:twinned_template/widgets/commons/validated_textfield.dart';

class SignUpPage extends StatefulWidget {
  final PageController pageController;
  const SignUpPage({super.key, required this.pageController});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/login_logo.png',
                height: 110,
                width: 110,
              ),
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Register New User',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 15),
                  Card(
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          UseridField(
                            hintText: "Enter your email",
                            controller: _emailController,
                          ),
                          const SizedBox(height: 15),
                          ValidatedTextField(
                              hintText: "Enter the firstname",
                              controller: _fnameController,
                              minLength: 1),
                          const SizedBox(height: 15),
                          ValidatedTextField(
                            hintText: "Enter the lastname",
                            controller: _lnameController,
                            minLength: 1,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      debugPrint('Cancel pressed');
                      widget.pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: primaryColor),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: secondaryColor)),
                    minimumSize: const Size(140, 40),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "SignUp",
                    style: TextStyle(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    widget.pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
                'Powered By',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/poweredby.png',
                width: 150,
              )
            ],
          ),
        ),
      ],
    );
  }
}
