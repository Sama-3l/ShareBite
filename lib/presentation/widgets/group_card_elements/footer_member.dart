import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';

class FooterMember extends StatelessWidget {
  const FooterMember({super.key, this.right = false});

  final bool right;

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
      ),
    );
  }
}
