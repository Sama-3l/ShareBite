import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';

class FriendsElementOptions extends StatelessWidget {
  const FriendsElementOptions({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero, // Remove padding to let the icon fill the space
      onPressed: () => onPressed,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Makes the container circular
          border: Border.all(color: AppColors.primaryWhite, width: 0.5),
        ),
        padding: const EdgeInsets.all(8),
        child: FittedBox(
          fit: BoxFit.contain, // Ensure the icon scales appropriately
          child: Icon(
            icon, // Replace with your desired icon
            color: AppColors.primaryWhite, // Icon color
          ),
        ),
      ),
    );
  }
}
