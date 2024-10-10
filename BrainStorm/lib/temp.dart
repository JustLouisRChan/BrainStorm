import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class FeedWidget extends StatefulWidget {
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  final String hintText = 'Search...'; // Default hint text
  Function(String)? onChanged; // Define the onChanged function

  List<String> items = []; // List to hold feed items

  @override
  void initState() {
    super.initState();
    _loadMoreItems(); // Load initial items
  }

  void _loadMoreItems() {
    // Simulating a network call to fetch more items
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        items.addAll(List.generate(10, (index) => 'Item ${items.length + index + 1}'));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(color: Color.fromRGBO(51, 51, 51, 1)),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 3,
            left: 0,
            right: 0,
            child: _buildSearchBar(),
          ),
          Positioned.fill(
            top: 50, // Adjust to position below the search bar
            child: _buildFeedList(),
          ),
          Positioned(
            top: screenSize.height * 0.8,
            left: screenSize.width * 0.05,
            child: _buildUserInfo(),
          ),
          Positioned(
            bottom: screenSize.height * 0.1,
            right: screenSize.width * 0.05,
            child: _buildStats(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: _buildBottomNavigation(),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedList() {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!scrollInfo.metrics.atEdge) return false;
        if (scrollInfo.metrics.pixels == 0) return false;

        _loadMoreItems(); // Load more items when scrolled to the bottom
        return true;
      },
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _buildFeedItem(items[index]);
        },
      ),
    );
  }

  Widget _buildFeedItem(String item) {
    return Container(
      height: MediaQuery.of(context).size.height, // Make item full height of the screen
      color: Colors.grey[900], // Background color for the item
      child: Center(
        child: Text(
          item,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
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
      padding: EdgeInsets.symmetric(horizontal: 10),
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
          Container(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
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
