import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  Color cardColor = Constants.greyColor;
  List <Map<String,dynamic>> songs = [
    {'url': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/97/6a/23/976a23cc-94b5-d995-0c93-a64c338dd9fa/mzaf_12400159846161454132.plus.aac.ep.m4a',
     'artist': 'Harrdy Sandhu',
     'title': 'Bijlee Bijlee',
     'coverArt': 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/30/b0/2c/30b02cdb-df2e-7f5f-f3d5-efa807b71608/21UM1IM31476.rgb.jpg/400x400cc.jpg',
    }
    ];
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

              ],
            )
          ],
        ),
      )
    );
  }
}
