import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Packages delivered",
          value: "17",
          onTap: () {},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Cancel delivery in progress",
          value: "3",
          onTap: () {},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Schedule delivery",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
