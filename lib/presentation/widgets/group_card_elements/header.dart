import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class GroupCardHeader extends StatelessWidget {
  const GroupCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(child: Iconify(girl2)),
                  ),
                  kGap8,
                  Text(
                    "Ashwatha Boys",
                    style: context.heading,
                  ),
                  kGap4,
                  Iconify(
                    verified,
                    size: 12,
                  ),
                  Spacer(),
                  Text(
                    "₹350",
                    style: context.subHeading,
                  )
                ],
              ),
              kGap8,
              Text(
                "Today, 8:30PM",
                style: context.caption,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
