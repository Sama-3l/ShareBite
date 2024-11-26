import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/group_card_tag.dart';

class FooterTags extends StatelessWidget {
  const FooterTags({super.key, required this.longPress});

  final bool longPress;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        GroupCardTag(text: "8"),
        kGap4,
        GroupCardTag(text: "EatSure"),
        kGap4,
        GroupCardTag(text: "The Good Bowl"),
      ],
    );
  }
}
