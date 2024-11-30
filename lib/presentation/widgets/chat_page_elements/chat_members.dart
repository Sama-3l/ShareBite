import 'package:flutter/cupertino.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/friends_elements/friends_page_elements.dart';
import 'package:sharebite/presentation/widgets/group_card_tag.dart';

class ChatMembers extends StatelessWidget {
  const ChatMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            "Members",
            style: context.headingWhite,
          ),
          kGap8,
          const GroupCardTag(text: "8")
        ],
      ),
      kGap16,
      ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) => FriendsElements(
          icon: boy2,
          infoType: AccountInfoType.chatMembers,
        ),
      )
    ]);
  }
}
