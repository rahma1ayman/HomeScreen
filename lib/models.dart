import 'package:flutter/material.dart';

class MainRow {
  Widget titleItem({required String title}) {
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

  Widget rowItems({required String image, required String text}) {
    return Stack(
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
    );
  }

  Widget rowEvents({
    required String title,
    required String subtitle,
    required String months,
    required String day,
  }) {
    return Stack(
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
                    months,
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
              subtitle,
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
    );
  }
}
