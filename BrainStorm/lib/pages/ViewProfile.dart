import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: AndroidViewprofilepagenotfriend(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class AndroidViewprofilepagenotfriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _ProfileHeader(),
          _ProfileInfo(),
          _ProfileActions(),
          _ProfileCourses(),
          _ProfileFooter(),
        ],
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 640,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFEEECF6)),
      child: Stack(
        children: [
          Positioned(
            left: 14,
            top: 10,
            child: Container(
              width: 327,
              height: 1210,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x66000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _ProfileName(),
                SizedBox(height: 0), // add space between elements
                _ProfileAvatar(),
                SizedBox(height: 30), // add space between elements
                Text(
                  '@Name PlaceHolder',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    height: 0.06,
                    letterSpacing: -0.48,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 18,
      child: Text(
        'Name PlaceHolder',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0.06,
          letterSpacing: -0.48,
        ),
      ),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 63,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 63,
              height: 63,
              decoration: ShapeDecoration(
                color: Color(0xFFA99BFF),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 7,
            top: 7,
            child: Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Add avatar content here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 640,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFEEECF6)),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 372,
            child: Container(
              width: 355,
              height: 710,
              padding: const EdgeInsets.symmetric(horizontal: 42),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CourseCard(),
                  const SizedBox(width: 36),
                  _CourseCard(),
                  const SizedBox(width: 36),
                  _CourseCard(),
                  const SizedBox(width: 36),
                  _CourseCard(),
                  const SizedBox(width: 36),
                  _CourseCard(),
                  const SizedBox(width: 36),
                  _CourseCard(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 21,
            top: 221,
            child: _UnfriendButton(),
          ),
          Positioned(
            left: 237,
            top: 221,
            child: _PremiumButton(),
          ),
          Positioned(
            left: 129,
            top: 221,
            child: _MessageButton(),
          ),
          Positioned(
            left: 139,
            top: 153,
            child: _FriendsCount(),
          ),
          Positioned(
            left: 29.58,
            top: 320,
            child: Container(
              width: 295.83,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF270FBF),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 266,
            child: SizedBox(
              width: 295.83,
              height: 30,
              child: Text(
                'Bio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8270F4),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w200,
                  height: 0.07,
                  letterSpacing: -0.45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 215.33,
      decoration: ShapeDecoration(
        color: Color(0xFFF2F0FD),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF270FBF)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class _UnfriendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFF563FE8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 90),
          SizedBox(
            width: 65,
            child: Text(
              'UnFriend',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFCFAFA),
                fontSize: 8.50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.28,
                letterSpacing: 0.68,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PremiumButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFF563FE8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 90),
          SizedBox(
            width: 65,
            child: Text(
              'Premium',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFCFAFA),
                fontSize: 8.50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.28,
                letterSpacing: 0.68,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFFA99BFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 90),
          SizedBox(
            width: 65,
            child: Text(
              'Message',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFCFAFA),
                fontSize: 8.50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.28,
                letterSpacing: 0.68,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FriendsCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.86,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
         width: 1, color: Color(0xFF270FBF),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8270F4),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.06,
                letterSpacing: -0.48,
              ),
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Friends',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8270F4),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                height: 0.06,
                letterSpacing: -0.48,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 316,
      height: 25,
      child: Stack(
        children: [
          Positioned(
            left: 216,
            top: 0,
            child: _PremiumButton(),
          ),
          Positioned(
            left: 111,
            top: 0,
            child: _MathDiscButton(),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: _AppliedPhyButton(),
          ),
        ],
      ),
    );
  }
}

class _MathDiscButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFFA99BFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16.68,
            height: 15.56,
            child: Stack(),
          ),
          const SizedBox(width: 90),
          SizedBox(
            width: 65,
            child: Text(
              'Math Dis...',
              style: TextStyle(
                color: Color(0xFFFCFAFA),
                fontSize: 8.50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.28,
                letterSpacing: 0.68,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppliedPhyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFF563FE8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16.68,
            height: 15.56,
            child: Stack(),
          ),
          const SizedBox(width: 90),
          SizedBox(
            width: 65,
            child: Text(
              'Applied Phy..',
              style: TextStyle(
                color: Color(0xFFFCFAFA),
                fontSize: 8.50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.28,
                letterSpacing: 0.68,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366.83,
      height: 43,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  height: 43,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 27,
                        height: 35,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
 children: [
                            Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.only(
                                top: 1.99,
                                left: 1.99,
                                right: 2,
                                bottom: 2,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Add home icon here
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 7,
                              child: Text(
                                'Home',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFA99BFF),
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 42,
                        height: 35,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 7,
                              child: Text(
                                'My Courses',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 38,
                        height: 35,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Add inbox icon here
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 40,
                        height: 35,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 21.16,
                              height: 23,
                              child: Stack(),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 6,
                              child: Text(
                                'Inbox',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 24,
                        height: 38.89,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 23.33,
                              padding: const EdgeInsets.only(
                                top: 1.94,
                                left: 3,
                                right: 3,
                                bottom: 2.92,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Add profile icon here
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 15.56,
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
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
          ),
        ],
      ),
    );
  }
}

class _ProfileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366.83,
      height: 43,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  height:  43,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 27,
                        height: 35,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.only(
                                top: 1.99,
                                left: 1.99,
                                right: 2,
                                bottom: 2,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Add home icon here
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 7,
                              child: Text(
                                'Home',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFA99BFF),
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 42,
                        height: 35,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 7,
                              child: Text(
                                'My Courses',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 38,
                        height: 35,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Add inbox icon here
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 40,
                        height: 35,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 21.16,
                              height: 23,
                              child: Stack(),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 6,
                              child: Text(
                                'Inbox',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 24,
                        height: 38.89,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 23.33,
                              padding: const EdgeInsets.only(
                                top: 1.94,
                                left: 3,
                                right: 3,
                                bottom: 2.92,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Add profile icon here
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 15.56,
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.33,
                                  letterSpacing: -0.21,
                                ),
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
          ),
        ],
      ),
    );
  }
}
