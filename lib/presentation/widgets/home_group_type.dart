import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class HomeGroupType extends StatelessWidget {
  const HomeGroupType({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: context.caption,
            ),
            kGap4,
            const Icon(
              CupertinoIcons.chevron_down,
              size: 12,
              color: AppColors.primaryWhite,
            )
          ],
        ),
        kGap16,
        ListView(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          children: children,
        )
      ],
    );
  }
}
