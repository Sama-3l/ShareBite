import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/avatar.dart';

class ChatElement extends StatelessWidget {
  const ChatElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Avatar(size: 40, icon: boy1),
              kGap16,
              Row(
                children: [
                  Text(
                    "Samael",
                    style: context.heading2,
                  ),
                  kGap4,
                  const Iconify(
                    verified,
                    size: 12,
                  )
                ],
              ),
              const Spacer(),
              Text(
                "Today, 8:31 PM",
                style: context.tag.copyWith(color: context.tag.color!.withOpacity(0.6)),
              ),
            ],
          ),
          kGap4,
          Padding(
            padding: const EdgeInsets.only(left: 40 + 16),
            child: Text(
              "Hello World, this is correct are we doing this?",
              style: context.body,
            ),
          )
        ],
      ),
    );
  }
}
