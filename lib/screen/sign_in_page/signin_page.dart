import 'package:flutter/material.dart';
import '../../common_widget/login_signin_button.dart';
import '../../common_widget/signup_login_to_divider.dart';
import '../../common_widget/text_field_login_or_signin.dart';
import '../../common_widget/top_bar.dart';
import '../login_screen/loginScreen.dart';
import '../navigation_screen/navigation_screen.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              LoginTopBar(),
              SignupLoginToDivider(
                signup_login: "Sign up",
                signup_login_details:
                    "Sign up with one of the following options",
              ),
              SizedBox(
                height: 52,
              ),
              FieldText(controller: name, hintText: "Name"),
              FieldText(controller: email, hintText: "Email"),
              FieldText(controller: password, hintText: "Password"),
              LoginSigninButton(
                buttonName: "Create account",
                signInLogin: "Log in",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavigationPage();
                      },
                    ),
                  );
                },
                onTapbelow: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
