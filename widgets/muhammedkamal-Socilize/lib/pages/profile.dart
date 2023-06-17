import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialize/pages/edit_profile.dart';
import 'package:socialize/widgets/header.dart';
import 'package:socialize/widgets/post.dart';
import 'package:socialize/widgets/post_tile.dart';
import 'package:socialize/widgets/progress.dart';
import 'home.dart';
import 'package:socialize/models/user.dart';

class Profile extends StatefulWidget {
  final profileId;

  Profile({this.profileId});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String currentUserId = currentUser?.id;
  String postOrientation = 'grid';
  List<Post> posts = [];
  int postCount = 0;
  int followersCount = 0;
  int followingCount = 0;
  bool isLoading = false;
  bool isFollowing = false;
  Column buildCountColumn(String label, int count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          count.toString(),
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Container buildButton({String text, Function onPressed}) {
    return Container(
      padding: EdgeInsets.only(top: 2.0),
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: isFollowing ? Colors.white : Theme.of(context).accentColor,
            border: Border.all(
              color: isFollowing ? Colors.white : Theme.of(context).accentColor,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isFollowing ? Colors.black : Colors.white,
            ),
          ),
          width: 250.0,
          height: 27.0,
        ),
      ),
    );
  }

  buildProfileButton() {
    bool isProfileOwner = currentUserId == widget.profileId;
    if (isProfileOwner)
      return buildButton(
        text: 'Edit Profile',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfile(currentUserID: currentUserId),
              ));
        },
      );
    else if (isFollowing) {
      return buildButton(text: "UnFollow", onPressed: handleUnFollow);
    } else if (!isFollowing) {
      return buildButton(text: "Follow", onPressed: handleFollow);
    }
  }

  handleUnFollow() {
    setState(() {
      isFollowing = false;
      followersCount--;
    });
    // remove current user to this user profile followers
    followersRef
        .document(widget.profileId)
        .collection('userFollowers')
        .document(currentUserId)
        .get()
        .then((doc) {
      if (doc.exists) doc.reference.delete();
    });
    // remove this user to current user following
    followingRef
        .document(currentUserId)
        .collection('userFollowers')
        .document(widget.profileId)
        .get()
        .then((doc) {
      if (doc.exists) doc.reference.delete();
    });
    // remove activity feed to this user
    activityFeedRef
        .document(widget.profileId)
        .collection('feedItems')
        .document(currentUserId)
        .get()
        .then((doc) {
      if (doc.exists) doc.reference.delete();
    });
  }

  handleFollow() {
    setState(() {
      isFollowing = true;
      followersCount++;
    });
    // adding current user to this user profile followers
    followersRef
        .document(widget.profileId)
        .collection('userFollowers')
        .document(currentUserId)
        .setData({});
    // adding this user to current user following
    followingRef
        .document(currentUserId)
        .collection('userFollowers')
        .document(widget.profileId)
        .setData({});
    // add activity feed to this user
    activityFeedRef
        .document(widget.profileId)
        .collection('feedItems')
        .document(currentUserId)
        .setData({
      'type': 'follow',
      'ownerId': widget.profileId,
      'username': currentUser.username,
      'userId': currentUser.id,
      'userProfileImg': currentUser.photoUrl,
      'timestamp': timeStamp,
    });
  }

  buildProfileHeader() {
    return FutureBuilder(
      future: usersRef.document(widget.profileId).get(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return circularProgress();
        User user = User.fromDocument(snapshot.data);
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: CachedNetworkImageProvider(user.photoUrl),
                    backgroundColor: Colors.teal[500],
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildCountColumn('Posts', postCount),
                            buildCountColumn('Followers', followersCount - 1),
                            buildCountColumn('Following', followingCount),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[buildProfileButton()],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  user.username,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  user.displayName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 12.0),
                child: Text(user.bio),
              ),
            ],
          ),
        );
      },
    );
  }

  getUserPosts() async {
    setState(() {
      isLoading = true;
    });
    QuerySnapshot snapshot = await postsRef
        .document(widget.profileId)
        .collection('usersPosts')
        .orderBy('timeStamp', descending: true)
        .getDocuments();
    setState(() {
      isLoading = false;
      postCount = snapshot.documents.length;
      posts = snapshot.documents.map((doc) => Post.fromDocument(doc)).toList();
    });
  }

  buildProfilePosts() {
    if (isLoading) return circularProgress();
    if (posts.isEmpty) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20.0),
              child: Text(
                'No posts yet',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[400],
                ),
              ),
            ),
            SvgPicture.asset('assets/images/no_content.svg', height: 260.0),
          ],
        ),
      );
    } else if (postOrientation == 'grid') {
      List<GridTile> gridTiles = [];
      posts.forEach((post) {
        gridTiles.add(GridTile(child: PostTile(post)));
      });
      return GridView.count(
        children: gridTiles,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 1.5,
        crossAxisSpacing: 1.5,
        shrinkWrap: true,
      );
    } else
      return Column(children: posts);
  }

  buildTogglePostOreintation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.grid_on,
            color: postOrientation == 'grid'
                ? Theme.of(context).accentColor
                : Colors.white,
          ),
          onPressed: () {
            setState(() {
              postOrientation = 'grid';
            });
          },
        ),
        IconButton(
          onPressed: () {
            setState(() {
              postOrientation = 'list';
            });
          },
          icon: Icon(
            Icons.list,
            color: postOrientation == 'list'
                ? Theme.of(context).accentColor
                : Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    getUserPosts();
    getFollowers();
    getFollowing();
    checkFollowing();
    super.initState();
  }

  getFollowers() async {
    QuerySnapshot snapshot = await followersRef
        .document(widget.profileId)
        .collection('userFollowers')
        .getDocuments();
    setState(() {
      followersCount = snapshot.documents.length;
    });
  }

  getFollowing() async {
    QuerySnapshot snapshot = await followingRef
        .document(widget.profileId)
        .collection('userFollowers')
        .getDocuments();
    setState(() {
      followingCount = snapshot.documents.length;
    });
  }

  checkFollowing() async {
    DocumentSnapshot doc = await followersRef
        .document(widget.profileId)
        .collection('userFollowers')
        .document(currentUserId)
        .get();
    setState(() {
      isFollowing = doc.exists;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, pageTitle: "Profile"),
      body: ListView(
        children: <Widget>[
          buildProfileHeader(),
          Divider(height: 0.0),
          buildTogglePostOreintation(),
          Divider(height: 0.0),
          buildProfilePosts(),
        ],
      ),
    );
  }
}
