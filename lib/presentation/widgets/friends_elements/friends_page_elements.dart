import 'package:flutter/cupertino.dart';
import 'package:sharebite/algorithms/widget_decider.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/avatar.dart';

class FriendsElements extends StatelessWidget {
  FriendsElements({
    super.key,
    required this.icon,
    this.infoType = AccountInfoType.friendList,
  });

  final String icon;
  final AccountInfoType infoType;
  final WidgetDecider wd = WidgetDecider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: AppColors.surfaceBlack, borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar(
              size: 56,
              icon: icon,
              padding: const EdgeInsets.all(8.0),
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
                      infoType == AccountInfoType.friendList
                          ? Text(
                              "+91-6386-291-080",
                              style: context.body,
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
            // friendRequests ? const Spacer() : Container(),
            wd.friendsElementOptions(infoType)
            // infoType == AccountInfoType.acceptRequest
            //     ? Container(
            //         decoration: BoxDecoration(border: Border.all(color: AppColors.primaryWhite, width: 0.5), borderRadius: BorderRadius.circular(32)),
            //         child: CupertinoButton(
            //             padding: EdgeInsets.zero,
            //             child: const Icon(
            //               CupertinoIcons.person_badge_plus,
            //               size: 24,
            //             ),
            //             onPressed: () {}),
            //       )
            //     : Container(),
          ],
        ),
      ),
    );
  }
}
