import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widget/login_signin_button.dart';
import '../../common_widget/signup_login_to_divider.dart';
import '../../common_widget/top_bar.dart';
import '../../common_widget/text_field_login_or_signin.dart';
import '../navigation_screen/navigation_screen.dart';
import '../sign_in_page/signin_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(100),
//         child: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.red,
//           leading:Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height:10 ,
//               width: 100,
// // margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Color(0xff555555),
//                borderRadius: BorderRadius.circular(5),
//               ),
//
//             ),
//           ),
//         ),
//       ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTopBar(),
              const SizedBox(
                height: 57,
              ),
              SignupLoginToDivider(
                signup_login: "Log in",
                signup_login_details: "Login with one of the following options",
              ),
              const SizedBox(
                height: 52,
              ),
              FieldText(
                hintText: 'Username',
                controller: username,
              ),
              FieldText(
                hintText: "Password",
                controller: password,
              ),
              LoginSigninButton(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInPage();
                  },),);
                },
                buttonName: "Log in",
                signInLogin: "Sign up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
