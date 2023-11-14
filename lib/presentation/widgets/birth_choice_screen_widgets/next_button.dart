import 'package:flora_test_project/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:flora_test_project/presentation/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  _navigateToUserInfoScreen(BuildContext context) {
    final NavigationBloc navigationBloc =
        BlocProvider.of<NavigationBloc>(context);

    final _ = navigationBloc.add(NavigateToUserInfoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToUserInfoScreen(context),
      child: Container(
        width: 189.0,
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(69, 69, 129, 1),
              Color.fromRGBO(130, 130, 217, 1.0),
            ],
          ),
        ),
        child: Row(
          children: [
            const Gap(20),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Next',
                  style: white20w400,
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/arrow_white.svg',
              width: 30,
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
