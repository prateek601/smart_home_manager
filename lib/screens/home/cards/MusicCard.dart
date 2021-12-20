import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
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

  int index = 0;

  AssetsAudioPlayer? _assetsAudioPlayer;
  bool isPlaying = false;
  StreamSubscription? streamSubscriptionPlayerStatePlaying;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 150,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    songs[index].coverArt,
                    height: 35,
                    width: 35,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          songs[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Constants.whiteColor.withOpacity(0.9)
                          ),
                        ),
                        Text(
                          songs[index].artist,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 8,
                            color: Constants.whiteColor.withOpacity(0.6)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      onPreviousTapped();
                    },
                    child: Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onPlayTapped();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Constants.whiteColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          isPlaying
                          ?
                          Icons.pause
                          :
                          Icons.play_arrow,
                          size: 28,
                          color: Constants.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      onNextTapped();
                    },
                    child: Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  void playSong() {
    _assetsAudioPlayer = AssetsAudioPlayer.withId('music');
    _assetsAudioPlayer!.open(
      Audio.network(
        songs[index].url,
        metas: Metas(
          id: 'Online',
          title: songs[index].title,
          artist: songs[index].artist,
          album: 'OnlineAlbum',
          image: MetasImage.network(songs[index].coverArt)
        )
      ),
      autoStart: true,
      showNotification: false,
      audioFocusStrategy: AssetsAudioPlayer.defaultFocusStrategy
    );

    playerEvent();
  }

  void playerEvent() {
    if (streamSubscriptionPlayerStatePlaying != null) {
      streamSubscriptionPlayerStatePlaying!.cancel();
    }
    streamSubscriptionPlayerStatePlaying =
        _assetsAudioPlayer!.isPlaying.listen((event) {
          setState(() {
            isPlaying = event;
          });
        });
  }

  void onNextTapped() {
    if(index == songs.length - 1) {
      index = 0;
    } else {
      index++;
    }
    setState(() {});
    playSong();
  }

  void onPreviousTapped() {
    if(index == 0) {
      index = songs.length - 1;
    } else {
      index--;
    }
    setState(() {});
    playSong();
  }

  void onPlayTapped() {
    setState(() {
      if(_assetsAudioPlayer == null) {
        playSong();
      } else {
        if(isPlaying) {
          _assetsAudioPlayer!.pause();
        } else {
          _assetsAudioPlayer!.play();
        }
      }
    });
  }
}
