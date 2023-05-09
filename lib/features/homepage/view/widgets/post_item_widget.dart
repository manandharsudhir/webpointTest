import 'package:flutter/material.dart';
import 'package:webpoint_test/core/configs/spacing_size.dart';
import 'package:webpoint_test/core/configs/style/colors.dart';
import 'package:webpoint_test/core/configs/style/text_styles.dart';
import 'package:webpoint_test/features/homepage/models/response/post_model.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Palette.background,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(100, 100, 111, 0.2),
              offset: Offset(0, 16),
              blurRadius: 29,
              spreadRadius: 0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            post.title,
            style: AppTextStyle.heading5,
          ),
          Spacing.sizedBoxH_08(),
          Text(
            "Posted By: ${post.userId}",
            style: AppTextStyle.caption.copyWith(
              color: Palette.text04,
            ),
          ),
          Spacing.sizedBoxH_08(),
          Text(post.body),
        ],
      ),
    );
  }
}
