import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  final Color colorBg;
  final Color colorText;
  final String title;
  final String image;
  final Widget screen;

  const ButtonGrid({
    super.key,
    required this.screen,
    required this.colorBg,
    required this.colorText,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorBg,
      elevation: 8,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        splashColor: Colors.black26,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              width: 500,
              height: 320,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 38, color: colorText, fontWeight: FontWeight.bold),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
