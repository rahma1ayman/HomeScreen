
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String title;
  const TitleRow({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See All',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        )
      ],
    );
  }
}
