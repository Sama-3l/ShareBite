import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({
    super.key,
    required this.icon,
    required this.title,
    this.iconWidget,
    required this.onPressed,
  });

  final IconData icon;
  final String title;
  final Widget? iconWidget;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: AppColors.primaryWhite.withOpacity(0.5),
        ))),
        child: CupertinoButton(
          onPressed: () => onPressed(),
          color: AppColors.transparent,
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(
            children: [
              iconWidget ??
                  Icon(
                    icon,
                    size: 24,
                    color: AppColors.primaryWhite,
                  ),
              kGap8,
              Text(
                title,
                style: context.chatText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
