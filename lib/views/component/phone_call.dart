import 'package:authentication_and_url/views/component/phone_email.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone_call extends StatelessWidget {
  const Phone_call({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () async {
      Uri uri=Uri.parse('tel:+918090357405');
      await launchUrl(uri);
    },child: const Containeer_Navigator(icondata: 'assets/svg/phone.svg',iscolor: true,isradius: true,name: '+91 8090357405',));
  }
}