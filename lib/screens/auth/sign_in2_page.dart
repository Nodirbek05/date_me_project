import 'package:dateme/core/app_const/app_colors.dart';
import 'package:dateme/core/app_const/app_icons.dart';
import 'package:dateme/core/responsive/size_config.dart';
import 'package:dateme/screens/auth/phone_number_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn2Page extends StatefulWidget {
  const SignIn2Page({Key? key}) : super(key: key);

  @override
  State<SignIn2Page> createState() => _SignIn2PageState();
}

class _SignIn2PageState extends State<SignIn2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: getHeight(200.0),
          left: getWidth(15.0),
          right: getWidth(15.0),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: getHeight(22.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(30.0),
            ),
            SizedBox(
              child: Form(
                child: TextFormField(
                  cursorColor: AppColors.lightgrey,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        getWidth(10.0),
                      ),
                    ),
                    fillColor: AppColors.lightgrey,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      color: AppColors.black,
                      fontSize: getHeight(16.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: getHeight(22.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhoneNumberPage(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: getHeight(50.0),
                width: getWidth(345.0),
                decoration: BoxDecoration(
                  color: AppColors.redButton,
                  borderRadius: BorderRadius.circular(
                    getWidth(30.0),
                  ),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: getHeight(18.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

             SizedBox(
              height: getHeight(20.0),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  color: AppColors.inputtextcolor,
                  fontSize: getHeight(17.0),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(17.0),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: getHeight(17.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(210.0),
            ),
            Container(
              height: getHeight(1.0),
              width: getWidth(330.0),
              color: AppColors.black,
            ),
            SizedBox(
              height: getHeight(17.0),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Login with",
                style: TextStyle(
                  color: AppColors.inputtextcolor,
                  fontSize: getHeight(17.0),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(15.0),
            ),
            SizedBox(
              width: getWidth(145.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    SvgIcons.facebook,
                    height: getHeight(32),
                  ),
                  SvgPicture.asset(
                    SvgIcons.google,
                    height: getHeight(32),
                  ),
                  SvgPicture.asset(
                    SvgIcons.apple,
                    height: getHeight(32),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
