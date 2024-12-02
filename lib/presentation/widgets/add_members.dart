import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class AddMembers extends StatelessWidget {
  const AddMembers({super.key, required this.title, required this.placeholder});

  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.labelWhite,
        ),
        kGap8,
        Stack(
          children: [
            CupertinoTextField(
              minLines: 1,
              maxLines: 6,
              decoration: BoxDecoration(
                color: AppColors.backgroundBlack,
                border: Border.all(
                  color: AppColors.primaryWhite.withOpacity(0.3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.fromLTRB(32, 8, 8, 8), // Add left padding to avoid overlap with icon
              placeholder: placeholder,
              style: context.chatText,
              placeholderStyle: context.body.copyWith(
                color: context.chatText.color!.withOpacity(0.3),
              ),
            ),
            Positioned(
              top: 12,
              left: 8,
              child: Icon(
                CupertinoIcons.envelope,
                size: 16,
                color: AppColors.primaryWhite.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
