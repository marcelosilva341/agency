import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dg_agency/ui/artist/pages/artist_page.dart';
import 'package:dg_agency/ui/clips/clip_page.dart';
import 'package:dg_agency/ui/contatct/contact_page.dart';
import 'package:dg_agency/ui/depoiments/depoiment_page.dart';
import 'package:dg_agency/ui/locked_access/locked_access.dart';
import 'package:dg_agency/ui/send/send_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;

  changeCurrentIndex(int value) {
    currentIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (value) {
            changeCurrentIndex(value);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mic_outlined), label: 'Artistas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: 'Contato'),
            BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Enviar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Clipes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star), label: 'Depoimentos'),
            BottomNavigationBarItem(icon: Icon(Icons.lock), label: 'Acesso'),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'DG AGENCY',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'assets/logo.png',
            height: 45,
            color: Colors.white,
          ),
        ),
      ),
      body: Builder(builder: (context) {
        if (currentIndex == 6) {
          return LockedAccess();
        }
        if (currentIndex == 5) {
          return const DepoimentPage();
        }
        if (currentIndex == 4) {
          return const ClipPage();
        }
        if (currentIndex == 3) {
          return const SendPage();
        }
        if (currentIndex == 2) {
          return const ContactPage();
        }
        if (currentIndex == 1) {
          return const ArtistPage();
        }
        if (currentIndex == 0) {
          return ListView(
            children: [
              Center(
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Bobbers',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Onde sua música vai mais longe',
                              textAlign: TextAlign.center),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 20),
                child: Container(
                  child: Image.asset(
                    'assets/sala.jpg',
                  ),
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {
                        currentIndex = 3;
                        setState(() {});
                      },
                      child: const Text(
                        'Envie seu trabalho',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          );
        }
        return Container();
      }),
    );
  }
}
