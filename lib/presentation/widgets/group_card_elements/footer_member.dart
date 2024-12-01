import 'package:flutter/cupertino.dart';
import 'package:sharebite/presentation/widgets/avatar.dart';

class FooterMember extends StatelessWidget {
  const FooterMember({super.key, this.last = false, required this.icon, this.right = false});

  final bool last;
  final bool right;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Align(
        widthFactor: 0.5,
        child: !last
            ? Avatar(size: 32, icon: icon)
            : Avatar(
                size: 32,
                icon: icon,
                right: right,
                cardFooter: true,
              ));
  }
}
