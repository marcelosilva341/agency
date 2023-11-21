import 'package:flutter/material.dart';

class TurnesPage extends StatelessWidget {
  TurnesPage({super.key});

  var turnes = [
    TurneModel('Gabriel Pensador',
        'https://uploads.metropoles.com/wp-content/uploads/2020/07/23181609/Gabriel-o-Pensador-2.jpeg'),
    TurneModel('Gabriel Elias',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/66a67a95-1ee7-4b2a-9899-cdff62650b43-q2q49oadzdmg5uylqqfijzngy4kovcnu9vwuqvzvz4.jpg'),
    TurneModel('DI FERRERO',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/a17f69f9-6c8d-4d72-bbe3-27b93159852e-scaled-q2q4aviypr9mzx7sq94cqoqo9unkpffhrtx6tm7s0w.jpg'),
    TurneModel('DANI CASTRO',
        'https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2021/11/10072712/WhatsApp-Image-2021-11-09-at-16.46.45-1-819x1024.jpeg'),
    TurneModel('VICKA',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/8fbab880-9b70-4a81-b05f-8849e969e2dc-q2q49meplpjvin1c1pm9f04jrctyfygdlmlvsc2obk.jpg'),
    TurneModel('Luan',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/1d5abba1-5749-4697-b6aa-81c6dd31bef3-q2q4c1tp9avjidicv9ekcw2f06v3bt3exna1f2h28w.jpg'),
    TurneModel('Rick marini',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/a89b94e8-1f9d-413a-9411-f3cae70c503a-q2q4bqjmzag3n1yqp4j1iywvvkeorfumw3g7nqxsbk.jpg'),
    TurneModel('ONZE 20',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/6ddf30c7-66b3-4d43-badd-f9352065eb43-e1677641637696-q2utvmxrkq84rvpk7kit6o6vcr29gzwrfleuq4milc.jpg'),
    TurneModel('THIAGO MARTINS',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/e28dfc86-7e66-4b78-b638-28d199e067b2-q2q4bw6o4antkpqjs6ysxxhnfvmw1mh0wvd4jepfa8.jpg'),
    TurneModel('RAFA THOR',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/elementor/thumbs/c0988d9f-4cd7-4f6b-850c-ed363240239f-q2q4brhh64hdynxdjmxo3gocgya1z4yd883p50we5c.jpg'),
    TurneModel('DETONAUTAS',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.42.55.jpeg?alt=media&token=a863e937-a928-4078-873e-ba67d6eab721'),
    TurneModel('EVANDRO MESQUITA - BLITZ',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.43.46.jpeg?alt=media&token=05f83b1d-d309-480b-bcbe-b90fe06978f7'),
    TurneModel('MANEVA',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.44.27.jpeg?alt=media&token=ec11363f-c891-429f-9f1d-df54d785c476'),
    TurneModel('TON CARFI',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.45.15.jpeg?alt=media&token=a1d00983-c712-40a8-99e0-65bb96656680'),
    TurneModel('PLANTA & RAIZ',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.45.51.jpeg?alt=media&token=e1557009-27c9-4570-bbfc-ad256a428f8e'),
    TurneModel('SÉRGIO GUIZE',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.46.29.jpeg?alt=media&token=ae400917-379d-4865-9f5c-076dac656c9b'),
    TurneModel('BHASKAR',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.47.32.jpeg?alt=media&token=8056821a-e0f8-4c5b-877c-ef547e09dd9f'),
    TurneModel('JEITO MOLEQUE',
        'https://firebasestorage.googleapis.com/v0/b/dgacengy.appspot.com/o/WhatsApp%20Image%202023-11-20%20at%2020.48.23.jpeg?alt=media&token=3b9650d9-be06-4f4a-9a88-84b8a271eedb')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Turnês'),
        ),
        backgroundColor: Colors.black,
        body: SizedBox.expand(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Artistas que já fizeram nossa bateria de rádios',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: turnes.length,
                  itemBuilder: (context, index) {
                    var turne = turnes[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                    alignment: turne.name.contains('JEITO')
                                        ? Alignment.topCenter
                                        : Alignment.center,
                                    image: NetworkImage(
                                      turne.image,
                                    ),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fitWidth)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            turne.name.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));

    ///
  }
}

class TurneModel {
  String name;
  String image;
  TurneModel(this.name, this.image);
}
