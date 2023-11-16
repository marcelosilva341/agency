import 'package:dg_agency/ui/about_us/about_us_page.dart';
import 'package:dg_agency/ui/artist/pages/artist_page.dart';
import 'package:dg_agency/ui/clips/clip_page.dart';
import 'package:dg_agency/ui/contatct/contact_page.dart';
import 'package:dg_agency/ui/depoiments/depoiment_page.dart';
import 'package:dg_agency/ui/locked_access/locked_access.dart';
import 'package:dg_agency/ui/root/pages/parceiros_page.dart';
import 'package:dg_agency/ui/root/pages/turnes_page.dart';
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
        backgroundColor: Colors.white,
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
          if (currentIndex == 7) {
            return ParceirosPage();
          }
          return ListView(
            children: [
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14))),
                  width: double.infinity,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/app-icon.png',
                            height: 125,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 28.0, right: 28, bottom: 15),
                          child: Text('ONDE SUA MÚSICA\nVAI MAIS LONGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 17)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65.0, right: 65),
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
                padding: const EdgeInsets.only(left: 65.0, right: 65),
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
                padding: const EdgeInsets.only(left: 65.0, right: 65),
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
              Padding(
                padding: const EdgeInsets.only(left: 65.0, right: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerMenu('Parceiros', Icons.people, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParceirosPage()));
                    }),
                    ContainerMenu('Turnês', Icons.airplane_ticket_outlined, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TurnesPage()));
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
            width: MediaQuery.of(context).size.width * 0.28,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
              color: Colors.white, // Cor de fundo do container
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400]!, // Cor da sombra mais clara
                  offset: const Offset(8, 8),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.grey[600]!, // Cor da sombra mais escura
                  offset: const Offset(-8, -8),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Center(
                child: Container(
              width: MediaQuery.of(context).size.width * 0.26,
              height: MediaQuery.of(context).size.height * 0.11,
              decoration: BoxDecoration(
                color: Colors.black, // Cor de fundo do container interno
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: MediaQuery.of(context).size.height * 0.06,
                    color: label.contains('Depoimentos')
                        ? Colors.yellow[700]
                        : label.contains('Clipes')
                            ? Colors.blue
                            : label.contains('Sobre')
                                ? Colors.orange
                                : label.contains('Contato')
                                    ? Colors.purple
                                    : label.contains('Turn')
                                        ? Colors.purple
                                        : label.contains('Parceiros')
                                            ? Colors.blue[900]
                                            : label.contains('Artistas')
                                                ? Colors.red
                                                : Colors.white,
                  ),
                  Text(label,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ))));
  }
}
