import 'package:authentication_and_url/views/component/phone_email.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Email_Source extends StatelessWidget {
  const Email_Source({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () async {
      Uri uri=Uri.parse('mailto:aweshprajapati150@gmail.com?subject=Inquiry%20For%20Project&body=Dear%20Sir');
      await launchUrl(uri);
    },child: const Containeer_Navigator(icondata: 'assets/svg/sms.svg',iscolor: true,isradius: true,name: 'aweshprajapati150@gmail.com',));
  }
}