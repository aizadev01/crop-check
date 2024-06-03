import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final void Function() onTap;

  const TabItem({required this.text, required this.icon, required this.isSelected, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, color: isSelected ? Colors.white : Colors.green[200],),
            Text(text, style: TextStyle(
                color: isSelected ? Colors.white : Colors.green[200],
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                fontSize: 12
            ),)
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}