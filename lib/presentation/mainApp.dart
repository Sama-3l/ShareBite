import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/theme.dart';
import 'package:sharebite/presentation/screens/account.dart';
import 'package:sharebite/presentation/screens/friends.dart';
import 'package:sharebite/presentation/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme,
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(height: 56, items: [
            CupertinoIcons.home.toNavBarItem('Home'),
            CupertinoIcons.person_2.toNavBarItem('Friends'),
            CupertinoIcons.person_circle.toNavBarItem('Account'),
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (context) => const HomeScreen(),
                );
              case 1:
                return CupertinoTabView(
                  builder: (context) => const FriendsScreen(),
                );
              case 2:
                return CupertinoTabView(
                  builder: (context) => const AccountScreen(),
                );
              default:
                return CupertinoTabView(
                  builder: (context) => const HomeScreen(),
                );
            }
          },
        ));
  }
}
