import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/pages/chat_info_page.dart';
import 'package:sharebite/presentation/widgets/chat_page_elements/chat_element.dart';
import 'package:sharebite/presentation/widgets/chat_page_elements/chat_text_field.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: AppColors.backgroundBlack,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              ScreenHeader(
                title: "Ashwatha Boys",
                padding: const EdgeInsets.symmetric(horizontal: 16),
                options: [
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => ChatInfoPage())),
                      child: const Icon(
                        CupertinoIcons.info_circle,
                        size: 24,
                      )),
                ],
              ),
              kGap24,
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  reverse: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ChatElement();
                  },
                ),
              )),
              kGap4,
              ChatTextField()
            ],
          ),
        )));
  }
}
