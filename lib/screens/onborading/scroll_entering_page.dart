import 'package:dateme/core/app_const/app_icons.dart';
import 'package:dateme/core/responsive/size_config.dart';
import 'package:dateme/screens/auth/sign_in1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class EnteringPage extends StatefulWidget {
  const EnteringPage({Key? key}) : super(key: key);

  @override
  State<EnteringPage> createState() => _EnteringPageState();
}

class _EnteringPageState extends State<EnteringPage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(10),
          right: getWidth(10),
          top: getHeight(30),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(10.0),
                right: getWidth(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn1Page(),
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      SvgIcons.x,
                      color: Colors.black,
                      height: getHeight(25),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getHeight(565),
              child: PageView(
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically.
                controller: controller,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            "assets/images/girl.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Credits",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "In the application, credits are considered currency. For credits, you can buy numbers of other users for communication.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: getHeight(8.0),
                        ),
                        Text(
                          "1 credit - \$0.99",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: getHeight(13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: getHeight(375),
                          width: getWidth(375),
                          child: Image.asset(
                            "assets/images/boy.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Buying a number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: getHeight(8.0),
                        ),
                        Text(
                          "You can specify the number of credits for which other users can buy your phone number. Half of the credits from each purchase of your phone number will be credited to your balance.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: getHeight(8.0),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: getHeight(375),
                          width: getWidth(375),
                          child: Image.asset(
                            "assets/images/move.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Top - users",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "You can also buy yourself a place in the 'Top'.A place in the top is bought for one day and increases the number of visits to your profile.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: getHeight(8.0),
                        ),
                        Text(
                          "1 credit - \$0.99",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: getHeight(13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
