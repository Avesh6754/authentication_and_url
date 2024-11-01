import 'package:authentication_and_url/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'component/all_social_media_access.dart';
import 'component/email_source.dart';
import 'component/phone_call.dart';
import 'component/phone_email.dart';
import 'component/social_media.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: const Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(
              'If you have any queries, get in touch with us. We will be happy to help you!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Phone_call(),
            Email_Source(),
            SizedBox(height: 5,),
            All_Social_Media()
          ],
        ),
      ),
    );
  }
}







