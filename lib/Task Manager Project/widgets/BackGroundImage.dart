import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key, required this.child}) : super(key: key);

  final Widget child;//ay widget use korar jonno tar vitor child use kortei hobe sei jonno ata use kora

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/background.svg",
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,//full screen cover kore rakhbe

        ),
        child


      ],
    );

  }
}
