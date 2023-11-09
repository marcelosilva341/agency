import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dg_agency/ui/about_us/about_us_page.dart';
import 'package:dg_agency/ui/artist/pages/artist_page.dart';
import 'package:dg_agency/ui/clips/clip_page.dart';
import 'package:dg_agency/ui/contatct/contact_page.dart';
import 'package:dg_agency/ui/depoiments/depoiment_page.dart';
import 'package:dg_agency/ui/locked_access/locked_access.dart';
import 'package:dg_agency/ui/send/send_page.dart';
import 'package:flutter/material.dart';

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
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note), label: 'Artistas'),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: 'Contato',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined),
                label: 'Clipes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Depoimentos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.send),
                label: 'Enviar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lock),
                label: 'Acesso',
              ),
            ]),
        backgroundColor: Colors.black,
        body: Builder(builder: (context) {
          if (currentIndex == 1) {
            return const ArtistPage();
          }
          if (currentIndex == 2) {
            return const ContactPage();
          }
          if (currentIndex == 3) {
            return const ClipPage();
          }
          if (currentIndex == 4) {
            return const DepoimentPage();
          }
          if (currentIndex == 5) {
            return const SendPage();
          }
          if (currentIndex == 6) {
            return LockedAccess();
          }
          return ListView(
            children: [
              Image.asset(
                'assets/app-icon.png',
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              Center(
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: const DefaultTextStyle(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Bobbers',
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 28.0, right: 28),
                      child: Text('ONDE SUA MÚSICA\nVAI MAIS LONGE',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerMenu('Sobre nós', Icons.person, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutUsPage()));
                    }),
                    ContainerMenu('Artistas', Icons.music_note_outlined, () {
                      currentIndex = 1;
                      setState(() {});
                    })
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerMenu('Contato', Icons.phone, () {
                      currentIndex = 2;
                      setState(() {});
                    }),
                    ContainerMenu('Clipes', Icons.video_collection_sharp, () {
                      currentIndex = 3;
                      setState(() {});
                    })
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerMenu('Depoimentos', Icons.star, () {
                      currentIndex = 4;
                      setState(() {});
                    }),
                    ContainerMenu('Acesso', Icons.lock, () {
                      currentIndex = 6;
                      setState(() {});
                    })
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        }));
  }
}

class ContainerMenu extends StatelessWidget {
  String label;
  IconData icon;
  Function()? onTap;
  ContainerMenu(this.label, this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: MediaQuery.of(context).size.height * 0.08,
                color: label.contains('Depoimentos')
                    ? Colors.yellow[700]
                    : label.contains('Clipes')
                        ? Colors.blue
                        : label.contains('Sobre')
                            ? Colors.orange
                            : label.contains('Contato')
                                ? Colors.purple
                                : label.contains('Artistas')
                                    ? Colors.red
                                    : Colors.black,
              ),
              Text(label,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
