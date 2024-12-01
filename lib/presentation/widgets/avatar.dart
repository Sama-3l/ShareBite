import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.size,
    required this.icon,
    this.padding = const EdgeInsets.all(4.0),
    this.cardFooter = false,
    this.right = false,
  });

  final double size;
  final String icon;
  final EdgeInsets padding;
  final bool cardFooter;
  final bool right;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: padding,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryWhite,
      ),
      child: cardFooter
          ? Center(
              child: Text(
              right ? "2+" : "+2",
              style: context.label,
            ))
          : Iconify(
              icon,
              size: double.infinity,
            ),
    );
  }
}
