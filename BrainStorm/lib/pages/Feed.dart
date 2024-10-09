import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class FeedWidget extends StatefulWidget {
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override

  final String hintText = 'Search...'; // Default hint text
  Function(String)? onChanged; // Define the onChanged function

  
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;


    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(color: Color.fromRGBO(51, 51, 51, 1)),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: screenSize.height * 0.8, // Adjusting user info position
            left: screenSize.width * 0.05,
            child: _buildUserInfo(),
          ),
          Positioned(
            bottom: screenSize.height * 0.1, // Adjusting stats position
            right: screenSize.width * 0.05, // Changed from left to right
            child: _buildStats(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: _buildBottomNavigation(),
          ),
          Positioned(
            top: 3, // Adjust the position of the search bar
            left: 0,
            right: 0,
            child: _buildSearchBar(),
          )
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildUserProfile(),
        SizedBox(height: 10),
        _buildOriginalSoundText(),
      ],
    );
  }

  Widget _buildUserProfile() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildProfileIcon(),
        SizedBox(width: 5),
        _buildUsername(),
        SizedBox(width: 15),
        _buildFollowButton(),
      ],
    );
  }

  Widget _buildProfileIcon() {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 1),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }

  Widget _buildUsername() {
    return Text(
      'USERNAME',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Inter',
        fontSize: 10,
        height: 1.6,
      ),
    );
  }

  Widget _buildFollowButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10), // Added padding for better tap area
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 0.5),
      ),
      child: Center(
        child: Text(
          'Follow',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 8,
            height: 2,
          ),
        ),
      ),
    );
  }

  Widget _buildOriginalSoundText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Boxicons.bx_music, color: Colors.white, size: 16),
        SizedBox(width: 10),
        Text(
          'Original Sound',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  Widget _buildStats() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildStatIcon(Boxicons.bx_heart, '10.0K'),
        SizedBox(height: 20),
        _buildStatIcon(Boxicons.bx_message_rounded_dots, '10.0K'),
        SizedBox(height: 20),
        _buildStatIcon(Boxicons.bx_bookmark, '10.0K'),
        SizedBox(height: 20),
        _buildStatIcon(Boxicons.bx_share, '10.0K'),
      ],
    );
  }

  Widget _buildStatIcon(IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.white),
        SizedBox(width: 7),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(Boxicons.bx_home, 'Home'),
          _buildNavItem(Boxicons.bx_book, 'My Courses'),
          _buildNavItem(Boxicons.bx_message, 'Inbox'),
          _buildNavItem(Boxicons.bx_user, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(icon, color: Color.fromRGBO(86, 63, 232, 1)),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 7,
          ),
        ),
        
      ],
    );
  }


Widget _buildSearchBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        
        // Space between search bar and scrollable container
        Container(
          height: 50, // Fixed height for the scrollable container
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4), // Space between items
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Item ${index + 1}',
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(width: 15), 
        Expanded(
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 6),
            ),
          ),
        ),
      ],
    ),
  );
}



  }


