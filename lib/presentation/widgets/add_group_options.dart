import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class AddGroupOptions extends StatelessWidget {
  const AddGroupOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryWhite.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Advanced Options",
              style: context.body,
            ),
            kGap8,
            const Icon(
              CupertinoIcons.chevron_down,
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
