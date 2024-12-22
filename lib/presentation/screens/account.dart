import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/account_option.dart';
import 'package:sharebite/presentation/widgets/avatar.dart';
import 'package:sharebite/presentation/widgets/chat_page_elements/chat_info_element.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                title: "Account",
                options: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(color: AppColors.creator, borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Creator",
                      style: context.heading2.copyWith(color: AppColors.surfaceBlack),
                    ),
                  ),
                ],
              ),
              kGap24,
              Expanded(
                  child: ListView(
                children: [
                  const Avatar(
                    size: 80,
                    icon: boy1,
                    padding: EdgeInsets.all(8),
                  ),
                  kGap8,
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Raghvendra Mishra(Samael)",
                          style: context.accName,
                        ),
                        kGap4,
                        const Iconify(
                          verified,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text("ME21B1075", style: context.accRollNum),
                  ),
                  kGap24,
                  ChatInfoElement(
                    title: "Phone Number",
                    info: "+91-6386-291-080",
                    onPressed: () {},
                  ),
                  kGap16,
                  const Row(
                    children: [
                      Expanded(
                        child: ChatInfoElement(
                          title: "Hostel",
                          info: "Ashwatha Hostel",
                        ),
                      ),
                      Expanded(
                        child: ChatInfoElement(
                          title: "Room Number",
                          info: "1117",
                        ),
                      ),
                    ],
                  ),
                  kGap16,
                  const Row(
                    children: [
                      Expanded(
                        child: ChatInfoElement(
                          title: "Admin Orders",
                          info: "69",
                        ),
                      ),
                      Expanded(
                        child: ChatInfoElement(
                          title: "Successful Groups",
                          info: "420",
                        ),
                      ),
                    ],
                  ),
                  kGap16,
                  const Row(
                    children: [
                      Expanded(
                        child: ChatInfoElement(
                          title: "Reports",
                          info: "2",
                          color: AppColors.red,
                        ),
                      ),
                      Expanded(
                        child: ChatInfoElement(
                          title: "Commends",
                          info: "420",
                          color: AppColors.green,
                        ),
                      ),
                    ],
                  ),
                  kGap24,
                  Text(
                    "Account Settings",
                    style: context.labelWhite,
                  ),
                  kGap16,
                  AccountOption(icon: CupertinoIcons.phone, title: "Change Phone Number", onPressed: () {}),
                  AccountOption(icon: CupertinoIcons.person, title: "Change Username", onPressed: () {}),
                  AccountOption(icon: CupertinoIcons.person_badge_plus, title: "Friend Requests", onPressed: () {}),
                  AccountOption(icon: CupertinoIcons.exclamationmark_triangle, title: "Reports", onPressed: () {}),
                  AccountOption(icon: CupertinoIcons.hand_thumbsup, title: "Commends", onPressed: () {}),
                  AccountOption(
                      icon: CupertinoIcons.phone,
                      iconWidget: const Iconify(
                        verified,
                        size: 24,
                      ),
                      title: "Apply for verification",
                      onPressed: () {}),
                ],
              ))
            ],
          ),
        )));
  }
}
