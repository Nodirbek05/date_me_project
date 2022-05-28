import 'package:dateme/core/app_const/app_colors.dart';
import 'package:dateme/core/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({Key? key}) : super(key: key);

  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
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
                value: 0.55, // Defaults to 0.5.
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
                "Date Of Birth",
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
                  textAlign: TextAlign.center,
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
                    hintText: "Date Of Birth",
                    hintStyle: TextStyle(
                      color: AppColors.inputtextcolor,
                      fontSize: getHeight(16.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(8.0),
            ),
            SizedBox(
              height: getHeight(8.0),
            ),
            Text("We want to make sure you are over 18 ",
                style: TextStyle(
                  color: AppColors.inputtextcolor,
                  fontSize: getHeight(14.0),
                )),
            SizedBox(
              height: getHeight(22.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DateOfBirth(),
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
          ],
        ),
      ),
    );
  }
}
