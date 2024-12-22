import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';

class OtpTextfield extends StatelessWidget {
  OtpTextfield({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(
        color: AppColors.backgroundBlack,
        border: Border.all(
          color: AppColors.primaryWhite.withOpacity(0.3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      controller: controller,
      padding: const EdgeInsets.all(2),
      maxLength: 1,
      style: context.chatText,
    );
  }
}
