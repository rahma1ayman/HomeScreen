
import 'package:flutter/material.dart';

class CategoryData1 extends StatelessWidget {
  final String image;
  final String text;
  const CategoryData1({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) =>
       Padding(
         padding: const EdgeInsets.only(right: 19),
         child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 280,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: SizedBox(
                width: 214,
                height: 85,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
      ),
       ),
    );;
  }
}
