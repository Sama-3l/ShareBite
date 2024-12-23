import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/avatar.dart';

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
                  const Avatar(size: 32, icon: girl2),
                  kGap8,
                  Text(
                    "Ashwatha Boys",
                    style: context.heading,
                  ),
                  kGap4,
                  const Iconify(
                    verified,
                    size: 12,
                  ),
                  const Spacer(),
                  Text(
                    "₹350",
                    style: context.subHeading,
                  )
                ],
              ),
              kGap8,
              Text(
                "Today, 8:30PM",
                style: context.body.copyWith(color: context.body.color!.withOpacity(0.5)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
