import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/pages/overview/widgets/info_card.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          height: _width / 64,
        ),
        InfoCard(
          title: "Packages delivered",
          value: "17",
          onTap: () {},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          height: _width / 64,
        ),
        InfoCard(
          title: "Cancel delivery in progress",
          value: "3",
          onTap: () {},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          height: _width / 64,
        ),
        InfoCard(
          title: "Schedule delivery",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          height: _width / 64,
        )
      ],
    );
  }
}
