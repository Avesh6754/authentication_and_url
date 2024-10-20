import 'package:authentication_and_url/views/component/phone_email.dart';
import 'package:authentication_and_url/views/component/social_media.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class All_Social_Media extends StatelessWidget {
  const All_Social_Media({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.only(left: 50, right: 50, top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black,width: 1)
        ),
        child: Column(
          children: [
            Container(height: 65,decoration:BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10))
            ),alignment:Alignment.center,child: const Text('Socail Media',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),)),

            InkWell(onTap: () async {
              Uri uri=Uri.parse('https://www.instagram.com/avesh_0510/');
              await launchUrl(uri,mode: LaunchMode.inAppWebView);
            },child: const Containeer_Navigator(icondata:'assets/svg/instagram.svg',iscolor: false,isradius: false,name: 'Instgram',)),
            InkWell(onTap: () async {
              Uri uri=Uri.parse('https://github.com/Avesh6754');
              await launchUrl(uri,mode: LaunchMode.inAppWebView);
            },child: const Containeer_Navigator(icondata: 'assets/svg/github.svg',iscolor: false,isradius: false,name: 'Github',)),
            InkWell(onTap: () async {
              Uri uri=Uri.parse('https://www.linkedin.com/in/avesh-prajapati-574276256/');
              await launchUrl(uri,mode: LaunchMode.inAppWebView);
            },child: const Containeer_Navigator_Social(iscolor: false,name: 'Linkdine',icondata:'assets/svg/linkedin.svg',isradius: true,))
          ],
        )
    );
  }
}