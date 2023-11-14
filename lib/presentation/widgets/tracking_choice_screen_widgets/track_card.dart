import 'package:flora_test_project/presentation/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrackCard extends StatelessWidget {
  final String cardTitle;
  final String cardSubTitle;
  final Function onCardTap;

  const TrackCard({
    super.key,
    required this.cardTitle,
    required this.cardSubTitle,
    required this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onCardTap(context, cardTitle),
      child: Container(
        width: 346,
        height: 131,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 239, 239, 1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: black30w900,
                ),
                Text(
                  cardSubTitle,
                  style: black20w400,
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/icons/arrow.svg',
              width: 30,
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
