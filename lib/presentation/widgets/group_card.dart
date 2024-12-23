import 'package:flutter/cupertino.dart';
import 'package:sharebite/algorithms/methods.dart';
import 'package:sharebite/algorithms/widget_decider.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/pages/chat_page.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/header.dart';

class GroupCard extends StatelessWidget {
  GroupCard({super.key, this.cardType = CardType.normal});

  final CardType cardType;
  final Methods func = Methods();
  final WidgetDecider wd = WidgetDecider();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (cardType) {
          case CardType.createdByUser:
          case CardType.waitingForOrder:
          case CardType.awaitingDelivery:
          case CardType.closed:
            {
              Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(builder: (context) => ChatPage()));
              break;
            }
          case CardType.adminReported:
            break;
          case CardType.normal:
          case CardType.awaitingAccess:
          case CardType.leave:
            break;
        }
      },
      onLongPress: () {},
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.surfaceBlack,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: func.getOrderCardColor(cardType),
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroupCardHeader(),
              kGap16,
              Text(
                "Say Hello! Let us know what you eating. It'll be okay",
                style: context.body,
              ),
              kGap40,
              wd.cardFooter(cardType, false)
            ],
          ),
        ),
      ),
    );
  }
}
