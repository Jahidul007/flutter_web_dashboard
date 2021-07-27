import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/constants/style.dart';
import 'package:flutter_web_dasboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function onTap;

  const InfoCardSmall(
      {Key key,
        this.title,
        this.value,
        this.topColor,
        this.isActive = false,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: isActive ? active : lightGrey, width: 0.5),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive ? active : lightGrey,
              ),
              CustomText(
                text: value,
                size: 24,
                fontWeight: FontWeight.bold,
                color: isActive ? active : lightGrey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
