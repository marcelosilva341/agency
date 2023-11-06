import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dg_agency/ui/about_us/about_us_page.dart';
import 'package:dg_agency/ui/artist/pages/artist_page.dart';
import 'package:dg_agency/ui/clips/clip_page.dart';
import 'package:dg_agency/ui/contatct/contact_page.dart';
import 'package:dg_agency/ui/depoiments/depoiment_page.dart';
import 'package:dg_agency/ui/locked_access/locked_access.dart';
import 'package:dg_agency/ui/shared/app_bar_dg.dart';
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
        backgroundColor: Colors.black,
        appBar: const AppBarDg(),
        body: ListView(
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
              padding: const EdgeInsets.only(left: 28.0, right: 28),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArtistPage()));
                  })
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerMenu('Contato', Icons.phone, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactPage()));
                  }),
                  ContainerMenu('Clipes', Icons.video_collection_sharp, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ClipPage()));
                  })
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerMenu('Depoimentos', Icons.star, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DepoimentPage()));
                  }),
                  ContainerMenu('Acesso', Icons.lock, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LockedAccess()));
                  })
                ],
              ),
            ),
          ],
        ));
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
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: MediaQuery.of(context).size.height * 0.12,
                color: Colors.black,
              ),
              Text(label,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
