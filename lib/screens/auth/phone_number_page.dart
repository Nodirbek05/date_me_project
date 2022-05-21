import 'package:dateme/core/app_const/app_colors.dart';
import 'package:dateme/core/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
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
                "Enter code from SMS",
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
              width: getWidth(300.0),
              child: _codeTextField(context),
            ),
            SizedBox(
              height: getHeight(25.0),
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
              height: getHeight(280.0),
            ),
            Container(
              height: getHeight(1.0),
              width: getWidth(330.0),
              color: AppColors.black,
            ),
            SizedBox(
              height: getHeight(20.0),
            ),
            SizedBox(
              child: Text(
                "* If the code did not come within 2 minutes please check your phone number!",
                style: TextStyle(
                  color: AppColors.inputtextcolor,
                  fontSize: getHeight(14.0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: getHeight(18.0),
            ),
            InkWell(
              onTap: (){},
              child: Text(
                "Check phone number",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: getHeight(14.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PinCodeTextField _codeTextField(BuildContext context) => PinCodeTextField(
        
        cursorColor: AppColors.inputtextcolor,
        appContext: context,
        length: 4,
        keyboardType: TextInputType.number,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        pinTheme: PinTheme(
          activeFillColor: AppColors.inputtextcolor,
          disabledColor: AppColors.inputtextcolor,
        
          borderRadius: BorderRadius.circular(
            getWidth(8.0),
          ),
          shape: PinCodeFieldShape.box,
          activeColor: AppColors.inputtextcolor,
          inactiveColor: AppColors.inputtextcolor,
          errorBorderColor: AppColors.redButton,
          selectedColor: AppColors.inputtextcolor,
          inactiveFillColor: Colors.black,
        ),
        onChanged: (v) {},
      );
}
