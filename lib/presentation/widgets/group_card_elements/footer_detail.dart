import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/extensions.dart';

class FooterDetail extends StatelessWidget {
  const FooterDetail({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
            child: Text(
              text,
              key: const ValueKey("text"),
              style: context.action,
            ),
          )),
    );
  }
}
