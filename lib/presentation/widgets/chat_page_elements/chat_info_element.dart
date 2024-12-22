// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/group_card_tag.dart';

class ChatInfoElement extends StatelessWidget {
  const ChatInfoElement({
    Key? key,
    required this.title,
    required this.info,
    this.invoiceElement = false,
    this.color,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String info;
  final bool invoiceElement;
  final Color? color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: color == null ? context.headingWhite : context.headingWhite.copyWith(color: color),
        ),
        invoiceElement ? kGap4 : Container(),
        invoiceElement
            ? GestureDetector(onTap: onPressed, child: GroupCardTag(text: info))
            : Text(
                info,
                style: context.body,
              ),
        kGap16,
      ],
    );
  }
}
