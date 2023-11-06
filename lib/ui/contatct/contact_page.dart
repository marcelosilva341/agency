import 'dart:io';

import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:dg_agency/ui/shared/bottom_bar_dg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDg(),
      bottomNavigationBar: const BottomBarDg(),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () async {
          const contact = '+555199117700';
          const whatsappURlAndroid =
              'whatsapp://send?phone=' + contact + "&text='Olá";
          final whatsappURLIos =
              "https://wa.me/$contact?text=${Uri.tryParse('Olá')}";

          if (Platform.isIOS) {
            await launchUrl(Uri.parse(whatsappURLIos));
          } else {
            await launchUrl(Uri.parse(whatsappURlAndroid));
          }
        },
        child: const Icon(Icons.phone_android),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Contato",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.phone, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "+55 81 3203 6222",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.email, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "contato@dgagency.com.br",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.home_outlined, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Porto Alegre – RS | Recife – PE",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Comunicação",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.mail, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "dg@dgagency.com.br",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Marketing",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.mail, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "marketing@dgagency.com.br",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Consultoria",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.mail, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "consultoria@dgagency.com.br",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Show",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.mail, color: Colors.white),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "comercial@beatmusicbr.com.br",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
