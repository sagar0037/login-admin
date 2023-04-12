import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_admin/checked_box.dart';
import 'package:login_admin/email_textfield.dart';
import 'package:login_admin/password_textfield.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({Key? key}) : super(key: key);

  final style = const TextStyle(fontSize: 14, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff92c279),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
            child: Card(
              color: const Color(0xff92c279).withOpacity(0.5),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Theme.of(context).colorScheme.outline, width: 1.5),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                width: 399,
                height: 502,
                padding: const EdgeInsets.fromLTRB(23, 32, 23, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.restaurant_rounded,
                          color: Color(0xfff4f4f4),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'KHAJAGHAR',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const EmailTextField(),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const PasswordTextField(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CheckedBox(),
                        Transform.translate(
                          offset: const Offset(-25.0, 1.0),
                          child: Text(
                            'Remember Me',
                            style: GoogleFonts.roboto(textStyle: style),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 105,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xff30B926)),
                              ),
                              child: Text(
                                'LOG IN',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: GoogleFonts.roboto(textStyle: style),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SelectableText(
                              'Sign Up',
                              style: GoogleFonts.roboto(
                                textStyle: style,
                                decoration: TextDecoration.underline,
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SelectableText(
                          'Forgot Password',
                          style: GoogleFonts.roboto(textStyle: style),
                          onTap: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
