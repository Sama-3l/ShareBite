import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLines: 6,
      minLines: 1,
      decoration: BoxDecoration(
        color: AppColors.backgroundBlack,
        border: Border(top: BorderSide(color: AppColors.primaryWhite.withOpacity(0.3), width: 0.3)),
      ),
      padding: EdgeInsets.all(16),
      placeholder: "Type a message",
      style: context.chatText,
      // placeholderStyle: context.body.copyWith(color: context.chatText.color!.withOpacity(0.3)),
      suffix: Row(
        children: [
          CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.paperclip,
                size: 24,
              ),
              onPressed: () {}),
          kGap4,
          CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.paperplane,
                size: 24,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
