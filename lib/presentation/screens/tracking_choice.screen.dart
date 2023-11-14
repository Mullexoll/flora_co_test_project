import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/tracking_choice_screen_widgets/track_card_builder.dart';

class TrackingChoiceScreen extends StatelessWidget {
  const TrackingChoiceScreen({super.key});

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
                    'assets/images/bg_screen_1.svg',
                    fit: BoxFit.cover,
                  ),
                  const Positioned.fill(
                    child: TrackCardBuilder(),
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
