import 'package:flutter/cupertino.dart';
import 'package:sharebite/presentation/widgets/group_card_elements/footer_member.dart';

class FooterCardMembers extends StatelessWidget {
  const FooterCardMembers({super.key, this.right = false});

  final bool right;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: right ? TextDirection.rtl : TextDirection.ltr, // Reverse direction if `right`
      child: Padding(
        padding: right ? const EdgeInsets.only(right: 6.0) : const EdgeInsets.only(left: 6.0),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FooterMember(),
            FooterMember(),
            FooterMember(),
            FooterMember(),
            FooterMember(),
          ],
        ),
      ),
    );
  }
}
