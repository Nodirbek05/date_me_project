import 'package:dateme/core/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_const/app_icons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/entering');
        },
        child: Center(
          child: SizedBox(
            height: getHeight(60),
            width: getWidth(
              320,
            ),
            child: SvgPicture.asset(
              SvgIcons.date_me,
            ),
          ),
        ),
      ),
    );
  }
}
