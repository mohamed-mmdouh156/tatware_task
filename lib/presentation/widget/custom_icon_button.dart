import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/app_size_config.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;

  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: SizeConfig.height*0.025,
        width: SizeConfig.height*0.025,
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
