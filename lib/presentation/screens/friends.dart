import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/pages/friends_requests.dart';
import 'package:sharebite/presentation/widgets/friends_elements/friends_page_elements.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  // AFTER UNDERSTANDING STATE MANAGEMENT
  // CHANGE THE WIDGETS SUCH THAT
  // THE CURRENT SCREEN CHANGES CONTEXT INSTEAD OF OPENING A NEW PAGE
  // HENCE FriendsElements(icon: body1, friendRequests: friendRequests) where the variable goes from true and false
  // CHANGING THE CURRENT UI BASED ON IF THE BUTTON IS PRESSED
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
                        Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(builder: (context) => FriendsRequests()));
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
                  return FriendsElements(icon: boy1);
                },
              ))
            ],
          ),
        )));
  }
}
