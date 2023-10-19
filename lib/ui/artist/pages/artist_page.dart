import 'package:dg_agency/data/models/artist.dart';
import 'package:dg_agency/data/repositories/artist_repository.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({super.key});

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  @override
  void initState() {
    repository.getArtists();
    // TODO: implement initState
    super.initState();
  }

  var repository = ArtistRepository();
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FutureBuilder<List<Artist>>(
        future: repository.getArtists(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text(
                "Ocorreu um erro ao buscar os artistas",
                style: TextStyle(color: Colors.red),
              ),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var artist = snapshot.data![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    height: 260,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(1, 2))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                  image: NetworkImage(
                                    artist.image,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(artist.name),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      launchUrl(Uri.parse(artist.spotifyUrl),
                                          mode: LaunchMode.externalApplication);
                                    },
                                    child: Image.asset(
                                      'assets/spotify.png',
                                      width: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launchUrl(Uri.parse(artist.instagram),
                                          mode: LaunchMode.externalApplication);
                                    },
                                    child: Image.asset(
                                      'assets/insta.png',
                                      width: 25,
                                    ),
                                  ),
                                  Builder(builder: (context) {
                                    if (artist.tiktok == '') {
                                      return Container();
                                    }
                                    return const SizedBox(
                                      width: 12,
                                    );
                                  }),
                                  Builder(builder: (context) {
                                    if (artist.tiktok == '') {
                                      return Container();
                                    }
                                    return GestureDetector(
                                      onTap: () {
                                        launchUrl(Uri.parse(artist.tiktok),
                                            mode:
                                                LaunchMode.externalApplication);
                                      },
                                      child: Image.asset(
                                        'assets/tiktok.png',
                                        width: 25,
                                      ),
                                    );
                                  }),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        launchUrl(Uri.parse(artist.drive));
                                      },
                                      child: const Icon(Icons.download))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
