import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/chat_page_elements/chat_info_element.dart';
import 'package:sharebite/presentation/widgets/chat_page_elements/chat_members.dart';

class ChatInfoPage extends StatelessWidget {
  const ChatInfoPage({super.key, this.admin = true});

  final bool admin;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.backgroundBlack,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              admin
                  ? Row(
                      children: [
                        Text(
                          "Ashwatha Boys",
                          style: context.title,
                        ),
                        const Spacer(),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          minSize: 24,
                          onPressed: () {},
                          child: const Icon(
                            CupertinoIcons.pencil_circle,
                            color: AppColors.primaryWhite,
                          ),
                        )
                      ],
                    )
                  : Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Ashwatha Boys",
                        style: context.title,
                      ),
                    ),
              kGap24,
              const ChatInfoElement(
                title: "Description",
                info: "Say Hello! Let us know what you eating. It’ll be okay",
              ),
              kGap16,
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: ChatInfoElement(
                            title: "Order Time",
                            info: "Today, 3:00PM",
                          ),
                        ),
                        Expanded(
                          child: ChatInfoElement(
                            title: "Min Contri",
                            info: "Rs. 300",
                          ),
                        ),
                      ],
                    ),
                    kGap16,
                    const Row(
                      children: [
                        Expanded(
                          child: ChatInfoElement(
                            title: "Platform",
                            info: "EatSure",
                          ),
                        ),
                        Expanded(
                          child: ChatInfoElement(
                            title: "Food Outlet",
                            info: "Good Bowl",
                          ),
                        ),
                      ],
                    ),
                    kGap16,
                    ChatInfoElement(
                      title: "Other Tags",
                      info: "BOGO Deals",
                      invoiceElement: true,
                      onPressed: () {},
                    ),
                    kGap16,
                    ChatInfoElement(
                      title: "Invoice",
                      info: "Invoice.pdf",
                      invoiceElement: true,
                      onPressed: () {},
                    ),
                    kGap16,
                    const ChatMembers()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
