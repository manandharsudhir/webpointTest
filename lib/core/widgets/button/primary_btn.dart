import 'package:flutter/material.dart';

import '../../configs/spacing_size.dart';
import '../../configs/style/colors.dart';
import '../../configs/style/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      this.borderRadius = 8,
      this.horizontalPadding = 15,
      this.verticalPadding = 15,
      required this.func,
      this.border,
      this.style,
      this.iconData,
      this.btnColor = Palette.primaryColor,
      this.textColor = Palette.text01,
      this.fontSize = 14})
      : super(key: key);
  final String text;
  final Function func;
  final TextStyle? style;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final Border? border;
  final Color btnColor;

  final Color textColor;
  final Widget? iconData;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        func();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
            color: btnColor,
            border: border,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData != null
                ? iconData!
                : const SizedBox(
                    width: 0,
                    height: 0,
                  ),
            Spacing.sizedBoxW_08(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyle.heading5.copyWith(
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
