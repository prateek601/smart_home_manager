import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/data/SongData.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  Color cardColor = Constants.greyColor;
  List <Song> songs = [
      Song(
        url: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/97/6a/23/976a23cc-94b5-d995-0c93-a64c338dd9fa/mzaf_12400159846161454132.plus.aac.ep.m4a',
        artist: 'Harrdy Sandhu',
        title: 'Bijlee Bijlee',
        coverArt: 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/30/b0/2c/30b02cdb-df2e-7f5f-f3d5-efa807b71608/21UM1IM31476.rgb.jpg/400x400cc.jpg'
      ),
      Song(
        url: 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/1b/ad/7a/1bad7aab-eb23-159e-3956-bee3f2451609/mzaf_8795727360165819957.plus.aac.ep.m4a',
        artist: 'AJR',
        title: 'The Good Part',
        coverArt: 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/59/aa/15/59aa15b8-cb64-02cc-a8bc-5969612b5d63/886446478777.jpg/400x400cc.jpg'
      )
    ];

  late String _coverArt;
  late String _title;
  late String _url;
  late String _artist;

  @override
  void initState() {
    super.initState();
    _coverArt = songs[0].coverArt;
    _title = songs[0].title;
    _artist = songs[0].artist;
    _url = songs[0].url;
  }

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 150,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Image.network(
                      _coverArt,
                      height: 30,
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _title,
                          style: TextStyle(
                            fontSize: 10
                          ),
                        ),
                        Text(
                          _artist,
                          style: TextStyle(
                              fontSize: 10
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
