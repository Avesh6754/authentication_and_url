import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Containeer_Navigator_Social extends StatelessWidget {
  const Containeer_Navigator_Social({
    super.key,

    this.icondata, this.isradius, this.iscolor, this.name,

  });

  final  icondata;
  final isradius;
  final iscolor;
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.5),
          borderRadius:(isradius)? BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10)):null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icondata,),
          SizedBox(
            width: 20,
          ),
          Text(
            '$name',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          )
        ],
      ),
    );
  }
}

