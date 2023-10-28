import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class ItemButton extends StatefulWidget {
  const ItemButton({
    super.key,
    required this.size,
    required this.icon,
    required this.title,
  });

  final Size size;
  final IconData icon;
  final String title;

  @override
  State<ItemButton> createState() => _ItemButtonState();
}

class _ItemButtonState extends State<ItemButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            height: widget.size.height * 0.105,
            width: widget.size.width * 0.21,
            decoration: BoxDecoration(
              color: isSelected ? cGreenColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: isSelected
                        ? cGreenColor.withOpacity(0.5)
                        : Colors.grey.shade200,
                    blurRadius: 30,
                    offset: const Offset(5, 5)),
              ],
            ),
            child: Icon(
              widget.icon,
              size: 45,
              color: isSelected ? Colors.white : cSecondaryBackgroundColor,
            ),
          ),
        ),
        SizedBox(
          height: widget.size.height * 0.01,
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
