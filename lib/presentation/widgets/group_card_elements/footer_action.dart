// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/extensions.dart'; // Assuming Iconify is imported

class SendRequestButton extends StatefulWidget {
  const SendRequestButton({
    super.key,
    required this.longPressed,
  });

  final bool longPressed;

  @override
  _SendRequestButtonState createState() => _SendRequestButtonState();
}

class _SendRequestButtonState extends State<SendRequestButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: widget.longPressed ? const Color(0xffFF7F11) : null,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (child, animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: widget.longPressed
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                  child: Text(
                    "Send Request",
                    key: const ValueKey("text"),
                    style: context.action,
                  ),
                )
              : RotationTransition(
                  turns: _controller,
                  child: Iconify(
                    applyToGroup,
                    key: const ValueKey("icon"),
                    size: 24,
                  ),
                ),
        ),
      ),
    );
  }
}
