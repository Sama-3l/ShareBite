import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/extensions.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key, required this.title, required this.options, this.padding = EdgeInsets.zero});

  final String title;
  final List<Widget> options;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Text(
            title,
            style: context.title,
          ),
          const Spacer(),
          ...options
        ],
      ),
    );
  }
}
