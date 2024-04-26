import 'package:flutter/material.dart';
import 'package:twinned_template/pages/login/page_forgot_otp_password.dart';
import 'package:twinned_template/pages/login/page_forgot_password.dart';
import 'package:twinned_template/pages/login/page_login.dart';
import 'package:twinned_template/pages/login/page_signup.dart';

class NavigationControl extends StatefulWidget {
  const NavigationControl({
    super.key,
    required Null Function() onCreateAccountPressed,
  });

  @override
  State<NavigationControl> createState() => _NavigationControlState();
}

class _NavigationControlState extends State<NavigationControl> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                LoginPage(pageController: _pageController),
                SignUpPage(pageController: _pageController),
                ForgotPasswordPage(pageController: _pageController),
                ForgotOtpPage(
                  pageController: _pageController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  static const String name = 'signin';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    // Tablet or larger view
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/iot3.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            width: 380,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                NavigationControl(
                  onCreateAccountPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
