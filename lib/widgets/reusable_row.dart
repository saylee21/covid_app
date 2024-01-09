import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({
    super.key,
    required this.title,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16),),
            Text(value, style: const TextStyle(fontSize: 16),)
          ],
        ),
        const SizedBox(height: 5,),
        const Divider()
      ],
    );
  }
}
