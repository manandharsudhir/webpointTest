import 'package:flutter/material.dart';
import 'package:webpoint_test/core/configs/spacing_size.dart';
import 'package:webpoint_test/core/configs/style/text_styles.dart';
import 'package:webpoint_test/core/widgets/button/primary_btn.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key, required this.errorMsg, required this.onBtnTapped});

  final String errorMsg;
  final VoidCallback onBtnTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/error.png"),
        Spacing.sizedBoxH_16(),
        Text(
          errorMsg,
          style: AppTextStyle.heading5,
        ),
        Spacing.sizedBoxH_16(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          child: PrimaryButton(
            text: "Refresh",
            func: onBtnTapped,
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}
