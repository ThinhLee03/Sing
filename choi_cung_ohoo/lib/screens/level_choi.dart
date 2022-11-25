import 'package:flutter/material.dart';

class LevelChoiScreen extends StatefulWidget {
  const LevelChoiScreen({Key? key}) : super(key: key);

  @override
  State<LevelChoiScreen> createState() => _LevelChoiScreenState();
}

class _LevelChoiScreenState extends State<LevelChoiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 44,
              padding: EdgeInsets.only(left: 5, right: 10),
              margin: EdgeInsets.fromLTRB(15, 28, 15, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF6560FF),
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 0,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Chế độ cá nhân',
                        style: TextStyle(
                          color: Color(0xFF6560FF),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
