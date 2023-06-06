import 'package:flutter/material.dart';
import 'package:instruments_for_various_games/app/home_page/NarrowScreen/narrow_home_page.dart';
import 'package:instruments_for_various_games/app/home_page/UltraWideScreen/ultrawide_home_page.dart';
import 'package:instruments_for_various_games/app/home_page/WideScreen/wide_home_page.dart';
import 'package:instruments_for_various_games/core/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      ultrawide: UltraWideHomePage(),
      wide: WideHomePage(),
      narrow: NarrowHomePage(),
    );
  }
}
