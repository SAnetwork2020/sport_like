import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/routes/routes.gr.dart';
import 'package:sport_like/utils/extensions.dart';

import '../constants.dart';

// import 'buddies_screen/buddies_screen.dart';
// import 'discover_screen/discover_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import 'setting_screen/settings_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ProfileRoute(),
        BuddiesRoute(),
        DiscoverRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Hero(
          tag: "nav_screen_tab",
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: 82,
              color: kPrimaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonBarItem(
                    selected: tabsRouter.activeIndex == 0,
                    icon: Icons.person,
                    label: "Profile",
                    onClick: () => tabsRouter.setActiveIndex(0),
                  ),
                  ButtonBarItem(
                    selected: tabsRouter.activeIndex == 1,
                    icon: Icons.people,
                    label: "Buddies",
                    onClick: () => tabsRouter.setActiveIndex(1),
                  ),
                  ButtonBarItem(
                    selected: tabsRouter.activeIndex == 2,
                    icon: Icons.explore,
                    label: "Discover",
                    onClick: () => tabsRouter.setActiveIndex(2),
                  ),
                  ButtonBarItem(
                    selected: tabsRouter.activeIndex == 3,
                    icon: Icons.settings,
                    label: "Settings",
                    onClick: () => tabsRouter.setActiveIndex(3),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ButtonBarItem extends StatelessWidget {
  const ButtonBarItem(
      {super.key,
      required this.selected,
      required this.icon,
      required this.label,
      required this.onClick});
  final bool selected;
  final IconData icon;
  final String label;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selected ? Colors.white : kNeutralGrey,
          ),
          2.toColumnSizedBox(),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              height: 18.toLineHeight(12),
              color: selected ? Colors.white : const Color(0xff757575),
            ),
          ),
        ],
      ),
    );
  }
}
