import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../string_assets.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key, this.images, this.text, this.underline = true, this.back});

  final String? images;
  final String? text;
  final bool underline;
  final String? back;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, '$back',
          arguments: {'image': images, 'text': text}),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 36,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('$images'))),
                ),
                const SizedBox(width: 12),
                Text('$text',
                    style: GoogleFonts.inter(
                        fontSize: 14, fontWeight: FontWeight.w500)),
                const Spacer(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(MyImage.chevron))),
                )
              ],
            ),
            SizedBox(height: underline ? 16 : 0),
            underline
                ? Divider(
                    color: Colors.grey.shade200,
                    height: 0,
                    thickness: 1.2,
                  )
                : const SizedBox(),
            SizedBox(height: underline ? 16 : 0),
          ],
        ),
      ),
    );
  }
}
