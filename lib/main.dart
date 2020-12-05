import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_bottom_navbar_option_2/startNewChat_Screen.dart';
import 'package:snapchat_bottom_navbar_option_2/userDetails_Screen.dart';
import 'Widgets/ChatItemWidgets/chatItem_Widget.dart';
import 'addFriends_Screen.dart';

List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        cameras: cameras,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.cameras}) : super(key: key);
  final List<CameraDescription> cameras;
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return userDetails();
                  },
                );
              },
              child: IconButton(
                  onPressed: () {},
                  icon: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.supervised_user_circle_outlined,
                        color: Colors.black,
                        size: 30,
                      ))),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return addFriends();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, right: 8.0),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => NewChat()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.message,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          ListView(
            padding: const EdgeInsets.only(
              top: 8,
              left: 10,
            ),
            children: <Widget>[
              chatItem(
                  context, "Vivek nagar", true, "1d", true, widget.cameras),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(
                  context, "Kusha Kapila", false, "24h", true, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "saurabh thakka", false, "2h", false,
                  widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                  context, "Vivek nagar", true, "1d", true, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                  context, "Kusha Kapila", false, "24h", true, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "saurabh thakka", false, "2h", false,
                  widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                  context, "Vivek nagar", true, "1d", true, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                  context, "Kusha Kapila", false, "24h", true, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "saurabh thakka", false, "2h", false,
                  widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false, widget.cameras),
              Divider(thickness: 0.3, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}
