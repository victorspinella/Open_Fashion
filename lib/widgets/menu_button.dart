import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const MenuButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.white, // Define a cor de fundo como branca
        onPrimary: Colors.black, // Define a cor do texto como preta
        shadowColor: Colors.transparent, // Remove a sombra
        elevation: 0, // Remove o efeito de elevação
        side: BorderSide.none, // Remove a borda
        minimumSize: const Size(0, 40), // Define um tamanho mínimo
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black, // Define a cor do texto como preta
        ),
      ),
    );
  }
}
