import 'package:dateme/core/app_const/app_colors.dart';
import 'package:dateme/screens/auth/enter_name_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../../core/app_const/app_icons.dart';
import '../../core/responsive/size_config.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {


  int genderValue= -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: getHeight(50.0),
          right: getWidth(20.0),
          left: getWidth(20.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(5.0),
              child: LiquidLinearProgressIndicator(
                value: 0.25, // Defaults to 0.5.
                valueColor: const AlwaysStoppedAnimation(Colors
                    .pink), // Defaults to the current Theme's accentColor.
                backgroundColor: AppColors.lightgrey,
                // Defaults to the current Theme's backgroundColor.
                borderColor: Colors.transparent,
                borderWidth: 1.0,
                borderRadius: 12.0,
                direction: Axis
                    .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                center: Text(""),
              ),
            ),
            SizedBox(
              height: getHeight(200.0),
            ),
            Center(
              child: Text(
                "Choose gender",
                style: TextStyle(
                  fontSize: getHeight(22.0),
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
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
                    RadioListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getWidth(10.0),
                        ),
                      ),
                      value: 1,
                      groupValue: genderValue,
                      onChanged: (val) {
                       setState(() {
                         
                         genderValue = 1;
                       });
                      },
                      tileColor: AppColors.lightgrey,
                      title: const Text("Men"),
                    ),
                    SizedBox(
                      height: getHeight(20.0),
                    ),
                    RadioListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getWidth(10.0),
                        ),
                      ),
                      value: 2,
                      groupValue: genderValue,
                      onChanged: (val) {
                        setState(() {
                          genderValue = 2;
                        });
                      },
                      tileColor: AppColors.lightgrey,
                      title: const Text("Women"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(30.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EnterNamePage(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: getHeight(50.0),
                width: getWidth(345.0),
                decoration: BoxDecoration(
                  color: genderValue == -1 ? AppColors.inputtextcolor : AppColors.redButton,
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
              height: getHeight(80.0),
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
