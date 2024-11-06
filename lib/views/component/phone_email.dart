import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Containeer_Navigator extends StatelessWidget {
  const Containeer_Navigator({
    super.key,

    this.icondata, this.isradius, this.iscolor, this.name,

  });

  final  icondata;
  final isradius;
  final iscolor;
  final name;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: 70,
      margin:(isradius)?EdgeInsets.only(left: 50,right: 50, top: 20):null,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.5),
          borderRadius:(isradius)? BorderRadius.circular(10):null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              icondata,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20,),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: height * 0.018,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
