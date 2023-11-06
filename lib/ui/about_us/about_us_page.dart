import 'dart:io';

import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:dg_agency/ui/shared/bottom_bar_dg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarDg(),
      appBar: const AppBarDg(),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 30,
              ),
              Text(
                "Sobre nós!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20,
            ),
            child: Container(
              child: Image.asset(
                'assets/sala.jpg',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Text(
                  """A DG AGENCY É A MAIOR EMPRESA DE DIVULGAÇÃO ARTÍSTICA DO SUL DO PAÍS

CAPAZ DE LEVAR OS ARTISTAS PARA RÁDIOS, TV'S E MÍDIAS IMPRESSAS E ONLINE COM TANTA EXPANSÃO, ATUANDO INCANSAVELMENTE NO BRASIL

ATUALMENTE A DG VEM SE DESTACANDO NO TRABALHO DE GESTÃO DE CARREIRA 360°

TEMOS UMA INCRÍVEL EXPERIÊNCIA DE MAIS DE 20 ANOS NO MERCADO DA MÚSICA""",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 30,
              ),
              Text(
                "Redes sociais",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchUrl(
                          Uri.parse(
                              'https://www.instagram.com/dgagencyoficial/'),
                          mode: LaunchMode.externalApplication);
                    },
                    child: Image.asset(
                      'assets/insta.png',
                      width: 59,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        launchUrl(
                            Uri.parse(
                                'https://www.tiktok.com/@dgagencyoficial'),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Image.asset(
                        'assets/tiktok.png',
                        width: 59,
                      )),
                  GestureDetector(
                    onTap: () async {
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
                    child: Image.asset(
                      'assets/whats.png',
                      width: 59,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
