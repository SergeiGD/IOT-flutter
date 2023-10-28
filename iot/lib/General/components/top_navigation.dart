import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/General/components/redirect_button.dart';

class NavIcon {
  Icon icon;
  VoidCallback event;
  NavIcon({required this.icon, required this.event});
}

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigation({
    super.key,
    required this.prevPageButton,
    required this.navItems,
    this.navIcon,
  });

  final bool prevPageButton;
  final List<RedirectButton> navItems;
  final NavIcon? navIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      decoration: const BoxDecoration(color: cMainBackgroundColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30,
              child: prevPageButton
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : null,
            ),
            for (final button in navItems) button,
            SizedBox(
              width: 30,
              child: IconButton(
                icon: navIcon!.icon,
                onPressed: navIcon!.event,
                color: Colors.white,
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
