import 'package:dateme/core/app_const/app_colors.dart';
import 'package:dateme/core/app_const/app_icons.dart';
import 'package:dateme/core/responsive/size_config.dart';
import 'package:dateme/screens/auth/sign_in2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn1Page extends StatefulWidget {
  const SignIn1Page({Key? key}) : super(key: key);

  @override
  State<SignIn1Page> createState() => _SignIn1PageState();
}

class _SignIn1PageState extends State<SignIn1Page> {
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
                child: Column(
                  children: [
                    TextFormField(
                      
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
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Enter your E-mail",
                        hintStyle: TextStyle(
                          color: AppColors.inputtextcolor,
                          fontSize: getHeight(16.0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(30.0),
                    ),
                    TextFormField(
                      cursorColor: AppColors.lightgrey,
                      decoration: InputDecoration(
                        
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.visibility_outlined,
                            color: AppColors.inputtextcolor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(getWidth(10.0)),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: AppColors.lightgrey,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Enter your password ",
                        hintStyle: TextStyle(
                          color: AppColors.inputtextcolor,
                          fontSize: getHeight(16.0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(160.0),
                top: getHeight(15.0),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: AppColors.inputtextcolor,
                      fontSize: getHeight(17.0)),
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
                    builder: (context) => const SignIn2Page(),
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
              height: getHeight(60.0),
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
              height: getHeight(50.0),
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
