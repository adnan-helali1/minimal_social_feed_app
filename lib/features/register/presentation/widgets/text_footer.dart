import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/helpers/extensions.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';

class TextFooter extends StatelessWidget {
  final String textSpan;
  final String nextPageName;
  final String firstWord;

  const TextFooter({
    super.key,
    required this.textSpan,
    required this.nextPageName,
    required this.firstWord,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyles.font14Black500,
          children: [
            TextSpan(text: "$firstWord have an account? "),
            TextSpan(
              text: textSpan,
              style: TextStyles.font13BmainBluew500,
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(nextPageName);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
