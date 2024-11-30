import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/friends_elements/friends_page_elements.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class FriendsRequests extends StatelessWidget {
  const FriendsRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: AppColors.backgroundBlack,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ScreenHeader(
                title: "Friend Requests",
                options: [
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        CupertinoIcons.person_crop_circle_badge_plus,
                        color: AppColors.actionOrange,
                        size: 24,
                      )),
                ],
              ),
              kGap24,
              Expanded(
                  child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return FriendsElements(
                    icon: boy1,
                    infoType: AccountInfoType.acceptRequest,
                  );
                },
              ))
            ],
          ),
        )));
  }
}
