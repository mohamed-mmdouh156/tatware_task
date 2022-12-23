import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/app_size_config.dart';
import '../../../styles/colors.dart';

class ChooseMenuItem extends StatefulWidget {
  final String text;
  const ChooseMenuItem({Key? key, required this.text}) : super(key: key);

  @override
  State<ChooseMenuItem> createState() => _ChooseMenuItemState();
}

class _ChooseMenuItemState extends State<ChooseMenuItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.height*0.005,),
      child: InkWell(
        onTap: (){
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Row(
          children: [
            isChecked ? Icon(
              Icons.check_circle,
              color: AppColor.tirqwaz,
              size: SizeConfig.height*0.025,
            ) :Icon(
              Icons.check_circle_outline,
              color: AppColor.tirqwaz,
              size: SizeConfig.height*0.025,
            ),
            SizedBox(
              width: SizeConfig.height*0.01,
            ),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.headline5Size,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
