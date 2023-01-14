import 'package:first_app_flutter/components/button_grid.dart';
import 'package:first_app_flutter/screen/animal_screen.dart';
import 'package:first_app_flutter/screen/body_human_screen.dart';
import 'package:first_app_flutter/screen/consonants_screen.dart';
import 'package:first_app_flutter/screen/family_screen.dart';
import 'package:first_app_flutter/screen/shapes_screen.dart';
import 'package:first_app_flutter/screen/transport_screen.dart';
import 'package:first_app_flutter/screen/vowels_screen.dart';
import 'package:flutter/material.dart';

import 'screen/colors_screen.dart';
import 'screen/numbers_creen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            for (var option in options)
              ButtonGrid(
                title: option.title,
                screen: option.screen,
                colorBg: option.colorBg,
                colorText: option.colorText,
                image: option.image,
              ),
          ],
        ));
  }
}

class Options {
  String title;
  Widget screen;
  Color colorBg;
  Color colorText;
  String image;

  Options(
      {required this.title,
      required this.screen,
      required this.colorBg,
      required this.colorText,
      required this.image});
}

List<Options> options = [
  Options(
      title: 'colors',
      screen: const ColorsScreen(),
      colorBg: Colors.redAccent,
      colorText: Colors.white,
      image:
          'https://media.licdn.com/dms/image/C4D12AQHwzmmgyXPz6Q/article-cover_image-shrink_423_752/0/1620388238551?e=1678924800&v=beta&t=lqexXSIIj1i_J_LYx1iK2UKwmheQgkKLMyE6ykFx-L8'),
  Options(
      title: 'numbers',
      screen: const NumberScreen(),
      colorBg: Colors.blueAccent,
      colorText: Colors.white,
      image:
          'https://img.freepik.com/vector-premium/numeros-divertidos-lindos-establecidos_97632-614.jpg?w=900'),
  Options(
      title: 'vowels',
      screen: const VowelsScreen(),
      colorBg: Colors.greenAccent,
      colorText: Colors.white,
      image:
          'https://www.mundoprimaria.com/wp-content/uploads/2021/11/las-vocales-mini.png'),
  Options(
      title: 'animals',
      screen: const AnimalsScreen(),
      colorBg: Colors.purpleAccent,
      colorText: Colors.white,
      image:
          'https://www.lavanguardia.com/files/image_948_465/uploads/2019/10/02/5fa53234969ff.jpeg'),
  Options(
      title: 'body_human',
      screen: const HumanBodyScreen(),
      colorBg: Colors.purpleAccent,
      colorText: Colors.white,
      image:
          'https://www.orientacionandujar.es/wp-content/uploads/2018/05/t1.jpg'),
  Options(
      title: 'shapes',
      screen: const ShapesScreen(),
      colorBg: Colors.redAccent,
      colorText: Colors.white,
      image:
          'https://static.escolakids.uol.com.br/2020/08/formas-geometricas.jpg'),
  Options(
      title: 'consonants',
      screen: const ConsonantsScreen(),
      colorBg: Colors.lightGreen,
      colorText: Colors.white,
      image: 'https://abcdario.org/wp-content/uploads/consonantes.jpg'),
  Options(
      title: 'transports',
      screen: const TransportsScreen(),
      colorBg: Colors.blueGrey,
      colorText: Colors.white,
      image:
          'http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRr__knAYm77p_n3GJCh_rYY_iMcXzmjUOubaedFdJoRLhyPGcmNahZOG1wQtmMhRccsNToZZwHnN5BZTJD6Uc'),
  Options(
      title: 'family',
      screen: const FamilyScreen(),
      colorBg: Colors.pinkAccent,
      colorText: Colors.white,
      image:
          'https://www.orientacionandujar.es/wp-content/uploads/2018/05/t1.jpg'),
];
