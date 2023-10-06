import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed; // Alterado o tipo para void Function()

  const SocialIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      onPressed: onPressed,
    );
  }
}
