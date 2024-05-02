import 'package:flutter/material.dart';

class PagButtons extends StatelessWidget {
  const PagButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("<<"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("<"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("1 / 5"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(">"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(">>"),
        ),
      ],
    );
  }
}
