import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dg_agency/data/models/artist.dart';

class ArtistRepository {
  var collectionName = 'artistas';
  var instanceFirestore = FirebaseFirestore.instance;
  Future<List<Artist>> getArtists() async {
    try {
      var artirtsFromFb =
          await instanceFirestore.collection(collectionName).get();
      List<Artist> artistsToReturn = [];
      for (var artist in artirtsFromFb.docs) {
        artistsToReturn.add(Artist(
            artist['nome'],
            artist['imagem'],
            artist['spotifyID'] ?? '',
            artist['instagram'],
            artist['drive'],
            artist['tiktok']));
      }
      return artistsToReturn;
    } catch (e) {
      throw Exception();
    }
  }
}
