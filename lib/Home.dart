import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset(
              'assets/home_bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good Morning',),
                            SizedBox(height: 5),
                            Text('Chris Cooper')
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){},
                          color: Constants.greyColor,
                          height: 40,
                          minWidth: 40,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.add,
                            color: Constants.whiteColor,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
