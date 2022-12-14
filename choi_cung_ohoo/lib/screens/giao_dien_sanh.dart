import 'package:choi_cung_ohoo/screens/ca_nhan/ca_nhan.dart';
import 'package:choi_cung_ohoo/screens/ca_nhan/level_linh_vuc.dart';
import 'package:choi_cung_ohoo/screens/cai_dat.dart';
import 'package:choi_cung_ohoo/screens/du_muc/che_do_du_muc.dart';
import 'package:choi_cung_ohoo/screens/danh_sach_ban_be.dart';
import 'package:choi_cung_ohoo/screens/ho_so.dart';
import 'package:choi_cung_ohoo/screens/doi_khang/ghep_tran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bang_xep_hang.dart';

class Sanh extends StatefulWidget {
  const Sanh({Key? key}) : super(key: key);

  @override
  State<Sanh> createState() => _SanhState();
}

class _SanhState extends State<Sanh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Header
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HoSo(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFF707070),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/avatars/avatar-22.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Xin ch??o ',
                                        style: TextStyle(
                                          color: Color(0xFF707070),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Bella',
                                            style: TextStyle(
                                              color: Color(0xFFFF0088),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Level: ',
                                          style: TextStyle(
                                              color: Color(0xFF707070),
                                              fontSize: 15),
                                          children: [
                                            TextSpan(text: '10'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.only(bottom: 20),
                        alignment: Alignment.topRight,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CaiDat(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 0,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        color: Color(0xFF6560FF),
                        iconSize: 27,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //B???ng th??ng tin
            Container(
              width: 350,
              height: 100,
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color(0xFF6560FF),
                    Color(0xFF333080),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'H???ng',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 2,
                        color: Colors.white,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tr???n th???ng',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 2,
                        color: Colors.white,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '??i???m',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 2,
                        color: Colors.white,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text(
                        '2000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Logo & n??t
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/logo.png'),
                          width: 105,
                          height: 70,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF6560FF),
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(50, 50),
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const BangXepHang(),
                                      ),
                                    );
                                  },
                                  child: Image(
                                    image: AssetImage('images/icons/award.png'),
                                    width: 27,
                                    height: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF6560FF),
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(50, 50),
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DanhSachBanBe(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.people,
                                    color: Color(0xFF6560FF),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF6560FF),
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(50, 50),
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                  ),
                                  onPressed: () {},
                                  child: Image(
                                    image: AssetImage('images/icons/chat.png'),
                                    width: 23,
                                    height: 23,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Ch??? ????? c?? nh??n
            Container(
              width: 350,
              height: 30,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ch??? ????? C?? Nh??n',
                    style: TextStyle(
                      color: Color(0xFF6560FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CaNhan(),
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/buttons/single.png'),
                ),
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'M??n H???c',
                        style: TextStyle(
                          color: Color(0xFF6560FF),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Ch??? ????? m??n h???c
            Container(
              height: 130,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/math.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/physics.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/chermistry.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/history.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/geography.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'L??nh V???c',
                        style: TextStyle(
                          color: Color(0xFF6560FF),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Ch??? ????? l??nh v???c
            Container(
              height: 130,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const LevelLinhVuc(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/buttons/it.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/cinema.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/buttons/cartoon.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '????? Vui',
                        style: TextStyle(
                          color: Color(0xFF6560FF),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //????? vui
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const GiaoDienCheDoChoiScreen(),
                  //   ),
                  // );
                },
                child: Image(
                  image: AssetImage('images/buttons/funny.png'),
                ),
              ),
            ),
            //Ch??? ????? ?????i kh??ng
            Container(
              width: 350,
              height: 30,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ch??? ????? ?????i Kh??ng',
                    style: TextStyle(
                      color: Color(0xFF6560FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GhepTran(),
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/buttons/battle.png'),
                ),
              ),
            ),
            //Ch??? ????? du m???c
            Container(
              width: 350,
              height: 30,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ch??? ????? Du M???c',
                    style: TextStyle(
                      color: Color(0xFF6560FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 10, 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheDoDuMucScreen(),
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/buttons/adventure.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
