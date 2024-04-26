import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:twinned_template/core/constants.dart';

class ForgotOtpPage extends StatefulWidget {
  final PageController pageController;
  const ForgotOtpPage({super.key, required this.pageController});

  @override
  State<ForgotOtpPage> createState() => _ForgotOtpPageState();
}

class _ForgotOtpPageState extends State<ForgotOtpPage> {
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _conPassController = TextEditingController();
  bool isObscured = true;
  bool isObscurednew = true;

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
                'assets/images/login_logo.png',
                height: 110,
                width: 110,
              ),
            ),
            const Text(
              'OTP And Password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            OtpForm(
              pinController: _pinController,
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              color: Colors.white60,
              elevation: 5,
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: TextFormField(
                        controller: _newPassController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscurednew = !isObscurednew;
                                });
                              },
                              icon: isObscurednew
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: "Enter New Password",
                            hintStyle: const TextStyle(color: Colors.black)),
                        obscureText: isObscurednew,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "New Password Required";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: TextFormField(
                        controller: _conPassController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscured = !isObscured;
                                });
                              },
                              icon: isObscured
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: "Enter Confirm Password",
                            hintStyle: const TextStyle(color: Colors.black)),
                        obscureText: isObscured,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm Password Required";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: secondaryColor)),
                  minimumSize: const Size(330, 50),
                ),
                onPressed: () async {
                  widget.pageController.animateToPage(0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
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

class OtpForm extends StatelessWidget {
  final TextEditingController pinController;

  const OtpForm({super.key, required this.pinController});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(top: 40),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pinput(
                controller: pinController,
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: const Color(0Xff375ee9),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
