import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';

class FooterMember extends StatelessWidget {
  const FooterMember({super.key, this.last = false, required this.icon, this.right = false});

  final bool last;
  final bool right;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: 0.5,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            border: Border.all(
              width: 0.5,
              color: AppColors.surfaceBlack,
            ),
            borderRadius: BorderRadius.circular(32)),
        child: Center(
          child: last
              ? Text(
                  right ? "2+" : "+2",
                  style: context.label,
                )
              : Iconify(icon),
        ),
      ),
    );
  }
}
