import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/extensions.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key, required this.title, required this.options});

  final String title;
  final List<Widget> options;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.title,
        ),
        const Spacer(),
        ...options
      ],
    );
  }
}
