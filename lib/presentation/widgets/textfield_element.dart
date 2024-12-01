import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class AddPageElement extends StatelessWidget {
  const AddPageElement({
    super.key,
    required this.title,
    required this.placeholder,
    this.icon,
    this.iconify = false,
    this.iconifyWidget,
  });

  final String title;
  final IconData? icon;
  final String placeholder;
  final bool iconify;
  final Widget? iconifyWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: context.labelWhite,
        ),
        kGap8,
        CupertinoTextField(
          minLines: 1,
          decoration: BoxDecoration(
            color: AppColors.backgroundBlack,
            border: Border.all(color: AppColors.primaryWhite.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          placeholder: placeholder,
          style: context.chatText,
          placeholderStyle: context.body.copyWith(color: context.chatText.color!.withOpacity(0.3)),
          prefix: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: iconify
                ? iconifyWidget
                : Icon(
                    icon,
                    size: 16,
                    color: AppColors.primaryWhite.withOpacity(0.3),
                  ),
          ),
        ),
      ],
    );
  }
}
