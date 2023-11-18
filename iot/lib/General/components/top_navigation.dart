import 'package:flutter/material.dart';
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

  IconButton? _build_icon() {
    if (navIcon != null) {
      return IconButton(
        icon: navIcon!.icon,
        onPressed: navIcon!.event,
        color: Colors.white,
        iconSize: 20,
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height * 0.1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
                child: prevPageButton
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 20,
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
                child: _build_icon(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
