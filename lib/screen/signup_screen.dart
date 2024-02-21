import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_botton.dart';
import 'package:onboarding_screen/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameControllre = TextEditingController();
  final emaillControllre = TextEditingController();
  final PasswordController = TextEditingController();
  final repasswordController = TextEditingController();
  signUpWithEmail() {
    print('Sign Up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        children: [
          const Spacer(),
          Text(
            'Welcome to our community',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            '\nTo get started, please provide your information to create an accout\n',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: nameControllre,
            hintText: 'Enter your name',
            obscureText: false,
            labelText: 'Name',
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: emaillControllre,
            hintText: 'Enter youe email',
            obscureText: false,
            labelText: 'Email',
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: PasswordController,
            hintText: "Enter you password",
            obscureText: true,
            labelText: "Password",
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: repasswordController,
            hintText: "Re-password",
            obscureText: true,
            labelText: "Enter your Password again",
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(onTap: signUpWithEmail, hinText: 'Sing up'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have a member',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
