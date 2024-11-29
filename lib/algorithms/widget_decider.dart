import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/footer_action.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/footer_card_members.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/footer_detail.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/footer_tags.dart';

class WidgetDecider {
  Widget cardFooter(CardType cardType, bool longPress) {
    switch (cardType) {
      case CardType.normal:
        return Row(
          children: [
            FooterTags(longPress: longPress),
            const Spacer(),
            SendRequestButton(
              longPressed: longPress,
            ),
          ],
        );
      case CardType.awaitingAccess:
        return Row(
          children: [
            FooterTags(longPress: longPress),
            const Spacer(),
            const FooterDetail(
              color: AppColors.red,
              text: "Awaiting Access",
            ),
          ],
        );
      case CardType.createdByUser:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FooterTags(longPress: longPress),
            const Spacer(),
            const FooterCardMembers(
              right: true,
            )
          ],
        );
      case CardType.waitingForOrder:
        return const Row(
          children: [
            FooterCardMembers(),
            Spacer(),
            FooterDetail(
              color: AppColors.actionOrange,
              text: "Waiting for Order",
            ),
          ],
        );
      case CardType.closed:
        return const Row(
          children: [
            FooterCardMembers(),
            Spacer(),
            FooterDetail(
              color: AppColors.actionOrange,
              text: "Closed",
            ),
          ],
        );
      case CardType.adminReported:
        return Row(
          children: [
            FooterTags(longPress: longPress),
            const Spacer(),
            const FooterDetail(
              color: AppColors.red,
              text: "Admin Reported",
            ),
          ],
        );
      case CardType.leave:
        return const Row(
          children: [
            FooterCardMembers(),
            Spacer(),
            FooterDetail(
              color: AppColors.green,
              text: "Select Group",
            ),
          ],
        );
      case CardType.awaitingDelivery:
        return Row(
          children: [
            FooterTags(longPress: longPress),
            const Spacer(),
            const FooterDetail(
              color: AppColors.green,
              text: "Delivery By: Today, 8:30PM",
            ),
          ],
        );
    }
  }
}
