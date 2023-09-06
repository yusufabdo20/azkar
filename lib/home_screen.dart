import 'package:azkar/azkar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'custom_button.dart';
import 'custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomHeadText(
                          title: "مرحباَ في تطبيق أذكار",
                          titleFontSize:
                              MediaQuery.of(context).size.width * 0.05),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   child: Text(
                      //     "الدخول للتطبيق",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold, fontFamily: 'Amiri'),
                      //   ),
                      //   style: ElevatedButton.styleFrom(
                      //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      //     backgroundColor: Colors.deepPurple,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(20),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      CustomElevatedButton(
                        buttonTitle: "الدخول للتطبيق",
                        onPressedFunction: () {
                          navigateTo(context, AzkarScreen());
                        },
                      ),
                      CustomElevatedButton(
                        buttonTitle: "الخروج من التطبيق",
                        onPressedFunction: () {
                          SystemNavigator.pop();
                        },
                      ),
                    ],
                  ),
                ),
                CustomHeadText(
                  title: "تم تطوير التطبيق من خلال اخوكم يوسف عبد الفتاح ",
                  titleFontSize: 14,
                  titleColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
