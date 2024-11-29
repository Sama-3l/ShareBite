import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class FriendsElements extends StatelessWidget {
  const FriendsElements({super.key, required this.icon, this.friendRequests = false});

  final String icon;
  final bool friendRequests;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(56),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Iconify(
                  icon,
                  size: double.infinity,
                ),
              ),
            ),
            kGap8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Raghvendra Mishra",
                    style: context.heading,
                  ),
                  kGap4,
                  Row(
                    children: [
                      Text(
                        "ME21B1075",
                        style: context.body,
                      ),
                      const Spacer(),
                      friendRequests
                          ? Container()
                          : Text(
                              "+91-6386-291-080",
                              style: context.body,
                            ),
                    ],
                  ),
                ],
              ),
            ),
            // friendRequests ? const Spacer() : Container(),
            friendRequests
                ? Container(
                    decoration: BoxDecoration(border: Border.all(color: AppColors.primaryWhite, width: 0.5), borderRadius: BorderRadius.circular(32)),
                    child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: const Icon(
                          CupertinoIcons.person_badge_plus,
                          size: 24,
                        ),
                        onPressed: () {}),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
