import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ClipPage extends StatefulWidget {
  const ClipPage({super.key});

  @override
  State<ClipPage> createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
  var ids = [
    's-xZPPJRIyE',
    'TN8PeHH1MTA',
    'JoGRcANyE9o',
    'dk1ZnqWO98g',
    'etl3nV3Jb04',
    'rkRk6qUeSLM',
    '3cKoqLTrS-Q',
    '31ieUReDF10',
    'mRz_h3cMB38',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarDg(),
      body: ListView.builder(
          itemCount: ids.length,
          itemBuilder: (context, index) {
            var id = ids[index];
            final YoutubePlayerController controller = YoutubePlayerController(
              initialVideoId: id,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            );

            return Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                ),
              ),
            );
          }),
    );
  }
}
