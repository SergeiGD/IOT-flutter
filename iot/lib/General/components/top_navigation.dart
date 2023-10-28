import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/General/components/redirect_button.dart';

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigation({
    super.key,
    required this.prevPageButton,
    required this.navItems,
    required this.size,
    this.endButton,
  });

  final bool prevPageButton;
  final List<RedirectButton> navItems;
  final Size size;
  final IconButton? endButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: cMainBackgroundColor,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width * 0.1,
            child: prevPageButton
                ? IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                : null,
          ),
          for (final button in navItems) button,
          SizedBox(
            width: size.width * 0.1,
            child: endButton,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
