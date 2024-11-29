import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';

class Methods {
  Color getOrderCardColor(CardType cardType) {
    switch (cardType) {
      case CardType.normal:
      case CardType.waitingForOrder:
      case CardType.awaitingDelivery:
      case CardType.leave:
        return AppColors.transparent;
      case CardType.awaitingAccess:
      case CardType.adminReported:
        return AppColors.red;
      case CardType.closed:
        return AppColors.actionOrange;
      case CardType.createdByUser:
        return AppColors.green;
    }
  }
}
