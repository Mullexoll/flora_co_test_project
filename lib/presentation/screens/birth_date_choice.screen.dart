import 'package:flora_test_project/presentation/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/birth_choice_screen_widgets/custom_year_picker.dart';
import '../widgets/birth_choice_screen_widgets/next_button.dart';

class BirthDateChoiceScreen extends StatelessWidget {
  const BirthDateChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SvgPicture.asset(
                    'assets/images/bg_screen_2.svg',
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    top: 209,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Log in your date of birth',
                        style: black25w700,
                      ),
                    ),
                  ),
                  const Positioned.fill(
                    child: Center(
                      child: CustomYearPicker(),
                    ),
                  ),
                  const Positioned.fill(
                    bottom: 80,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: NextButton(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
