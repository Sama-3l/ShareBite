import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/pages/friends_requests.dart';
import 'package:sharebite/presentation/widgets/friends_elements.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
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
                title: "Friends",
                options: [
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsRequests()));
                      },
                      child: const Icon(
                        CupertinoIcons.person_crop_circle_badge_plus,
                        size: 24,
                      )),
                ],
              ),
              kGap24,
              Expanded(
                  child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const FriendsElements(icon: boy1);
                },
              ))
            ],
          ),
        )));
  }
}
