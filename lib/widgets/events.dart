import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  final String title;
  final String subTitle;
  final String month;
  final String day;

  const Events({super.key,required this.title,required this.subTitle,required this.month,required this.day});

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
              decoration: BoxDecoration(
                color: const Color(0xff024272),
                borderRadius: BorderRadius.circular(16),
              ),
              width: 280,
              height: 140,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 280,
              height: 120,
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 66,
                      width: 79,
                      decoration: const BoxDecoration(
                        color: Color(0xff5C91B8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        day,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 26.52,
                      width: 79.19,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        month,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                subtitle: Text(
                  subTitle,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
      ),
       ),
    );
  }
}
