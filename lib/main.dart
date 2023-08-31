//WHATSAPP-UI-PROJECT IN FLUTTER

// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MyUi());
}

class MyUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return home_page();
  }
}

class home_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_page_state();
  }
}

bool _iconBool = false;

IconData _iconlight = Icons.light_mode_sharp;
IconData _icondark = Icons.dark_mode_rounded;

ThemeData _LightTheme =
    ThemeData(primarySwatch: Colors.teal, brightness: Brightness.light);

ThemeData _darkTheme =
    ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark);

class home_page_state extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WHATSAPP-UI",
      theme: _iconBool ? _darkTheme : _LightTheme,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Text(
              "  WhatsApp",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _iconBool = !_iconBool;
                    });
                  },
                  icon: Icon(_iconBool ? _icondark : _iconlight)),
              SizedBox(width: 10),
              Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.black,
                  ),
                  itemBuilder: ((context) => [
                        PopupMenuItem(value: 1, child: Text("New Contact")),
                        PopupMenuItem(value: 2, child: Text("New Group")),
                        PopupMenuItem(value: 3, child: Text("Add Status")),
                        PopupMenuItem(value: 4, child: Text("New Broadcast")),
                        PopupMenuItem(value: 5, child: Text("Linked Devices")),
                        PopupMenuItem(
                            value: 6, child: Text("Starred Messages")),
                        PopupMenuItem(value: 7, child: Text("Settings")),
                      ])),
              SizedBox(
                width: 10,
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.people_alt_sharp,
                  ),
                ),
                Tab(child: Text("Chats")),
                Tab(child: Text("Status")),
                Tab(child: Text("Calls")),
              ],
              labelColor: Colors.black,
              indicatorColor: Colors.black,
            ),
            backgroundColor: Colors.teal,
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset("assets/image.png"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Stay connected with a community",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  "Communities bring members together in  \n topic-based groups, and amke it easy to get \n admin announcments any community you're added \nto will appear here..",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                Text(
                  ".Learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                          "Start your community",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/01/07/23/01/sketch-4748895_640.jpg"),
                  ),
                  title: Text("Ali Ahmad"),
                  subtitle: Text("Are you coming today?"),
                  trailing: Text("3:35 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2012/04/18/23/36/boy-38262_640.png"),
                  ),
                  title: Text("Aslam"),
                  subtitle: Text("Hello man,How are you?"),
                  trailing: Text("9:25 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_640.png"),
                  ),
                  title: Text("Saqib"),
                  subtitle: Text("Hello"),
                  trailing: Text("8:45PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/13/42/tux-161406_640.png"),
                  ),
                  title: Text("Hasnain"),
                  subtitle: Text("where are you?"),
                  trailing: Text("1:05 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/01/22/15/13/businessman-607834_640.png"),
                  ),
                  title: Text("sultan Ahmad"),
                  subtitle: Text("I am sick"),
                  trailing: Text("2:15 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/12/38/boy-160014_640.png"),
                  ),
                  title: Text("Azain Ali"),
                  subtitle: Text("Are you coming?"),
                  trailing: Text("7:56 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/12/14/47/boy-148779_640.png"),
                  ),
                  title: Text("Shahid Ullah"),
                  subtitle: Text("Goob Job Man"),
                  trailing: Text("11:35 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/09/20/23/24/man-2770192_640.jpg"),
                  ),
                  title: Text("Mahad"),
                  subtitle: Text("I wanna to talk to you know!"),
                  trailing: Text("11:00 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/12/38/boy-160017_640.png"),
                  ),
                  title: Text("Mubeen Ahmad"),
                  subtitle: Text("Who are you?"),
                  trailing: Text("9:50 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/07/10/17/54/kid-1508121_640.jpg"),
                  ),
                  title: Text("Hannan"),
                  subtitle: Text("Are you free now?"),
                  trailing: Text("9:00 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/10/30/17/32/boy-509488_640.jpg"),
                  ),
                  title: Text("Ali Gohar"),
                  subtitle: Text("Are you done your work?"),
                  trailing: Text("6:00 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/11/06/13/45/cap-2923682_640.jpg"),
                  ),
                  title: Text("Abuzar Farid"),
                  subtitle: Text("I need your help"),
                  trailing: Text("1:10 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/05/17/22/16/baby-1399332_640.jpg"),
                  ),
                  title: Text("Aizaz Khan"),
                  subtitle: Text("I am busy man"),
                  trailing: Text("9:09 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/12/34/kid-159871_640.png"),
                  ),
                  title: Text("M.Maaz"),
                  subtitle: Text("Quran class will be started in 10 minutes"),
                  trailing: Text("10:50 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/02/20/11/57/boy-2082270_640.jpg"),
                  ),
                  title: Text("Hamza khan"),
                  subtitle: Text("I am coming"),
                  trailing: Text("5:50 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/07/02/23/07/kid-1493932_640.jpg"),
                  ),
                  title: Text("Haroon Islam"),
                  subtitle: Text("I am in your room!"),
                  trailing: Text("2:10 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/26/20/35/young-man-1281282_640.jpg"),
                  ),
                  title: Text("Hashir Qayayum"),
                  subtitle: Text("I am in village"),
                  trailing: Text("10:50 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/29/03/14/portrait-1287413_640.jpg"),
                  ),
                  title: Text("Saad javed"),
                  subtitle: Text("I am in university "),
                  trailing: Text("11:00 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/06/28/19/25/man-1485335_640.jpg"),
                  ),
                  title: Text("Ahmad raza"),
                  subtitle: Text("Be a man"),
                  trailing: Text("12:03 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/29/03/15/man-1867009_640.jpg"),
                  ),
                  title: Text("Kashif Haider"),
                  subtitle: Text("Sir is coming in a minute"),
                  trailing: Text("2:30 PM"),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/01/28/02/24/japan-2014619_640.jpg"),
                    ),
                  ),
                  title: Text("My status"),
                  subtitle: Text("Today,08:58"),
                  trailing: PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(value: 1, child: Text("Forward")),
                      PopupMenuItem(value: 2, child: Text("Share...")),
                      PopupMenuItem(value: 3, child: Text("Delete")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "     Recent updates",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2012/04/18/23/36/boy-38262_640.png"),
                    ),
                  ),
                  title: Text("Aslam"),
                  subtitle: Text("10 minutes ago"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_640.png"),
                    ),
                  ),
                  title: Text("Saqib"),
                  subtitle: Text("45 minutes ago"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/13/13/42/tux-161406_640.png"),
                    ),
                  ),
                  title: Text("Hasnain"),
                  subtitle: Text("50 minutes ago"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/01/22/15/13/businessman-607834_640.png"),
                    ),
                  ),
                  title: Text("sultan Ahmad"),
                  subtitle: Text("Today,10:12 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/13/12/38/boy-160014_640.png"),
                    ),
                  ),
                  title: Text("Azain Ali"),
                  subtitle: Text("Today,7:42 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/12/14/47/boy-148779_640.png"),
                    ),
                  ),
                  title: Text("Shahid Ullah"),
                  subtitle: Text("Today,5:11 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/09/20/23/24/man-2770192_640.jpg"),
                    ),
                  ),
                  title: Text("Mahad"),
                  subtitle: Text("Today,3:50 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/13/12/38/boy-160017_640.png"),
                    ),
                  ),
                  title: Text("Mubeen Ahmad"),
                  subtitle: Text("Today,3:05 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/07/10/17/54/kid-1508121_640.jpg"),
                    ),
                  ),
                  title: Text("Hannan"),
                  subtitle: Text("Today,2:40 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/10/30/17/32/boy-509488_640.jpg"),
                    ),
                  ),
                  title: Text("Ali Gohar"),
                  subtitle: Text("Today,2:12 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/11/06/13/45/cap-2923682_640.jpg"),
                    ),
                  ),
                  title: Text("Abuzar Farid"),
                  subtitle: Text("Today,2:00 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/05/17/22/16/baby-1399332_640.jpg"),
                    ),
                  ),
                  title: Text("Aizaz Khan"),
                  subtitle: Text("Today,1:00 AM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/13/12/34/kid-159871_640.png"),
                    ),
                  ),
                  title: Text("M.Maaz"),
                  subtitle: Text("Yesterday,11:50 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/02/20/11/57/boy-2082270_640.jpg"),
                    ),
                  ),
                  title: Text("Hamza khan"),
                  subtitle: Text("yesterday,11:42 PM"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/07/02/23/07/kid-1493932_640.jpg"),
                    ),
                  ),
                  title: Text("Haroon Islam"),
                  subtitle: Text("Yesterday,11:36 PM"),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text(
                    "  Your status updates are end-to-end encrypted",
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Image(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_640.png'),
                      height: 23,
                      width: 23,
                    ),
                  ),
                  title: Text(
                    "Create call link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Share a link for your whatsApp call"),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "     Recent ",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/09/20/23/24/man-2770192_640.jpg"),
                  ),
                  title: Text("Mahad"),
                  subtitle: Text(
                    "Missed call now,11:02 AM",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_640.png"),
                  ),
                  title: Text("Saqib"),
                  subtitle: Text("Yesterday,12:12 AM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/13/42/tux-161406_640.png"),
                  ),
                  title: Text("Hasnain"),
                  subtitle: Text("Yesterday,10:11 AM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/06/28/19/25/man-1485335_640.jpg"),
                  ),
                  title: Text("Ahmad raza"),
                  subtitle: Text("Today,10:02 PM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/12/34/kid-159871_640.png"),
                  ),
                  title: Text("M.Maaz"),
                  subtitle: Text("Yesterday,01:12 AM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/11/06/13/45/cap-2923682_640.jpg"),
                  ),
                  title: Text("Abuzar Farid"),
                  subtitle: Text("Today,12:30 PM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/26/20/35/young-man-1281282_640.jpg"),
                  ),
                  title: Text("Hashir Qayyum"),
                  subtitle: Text("Today,03:32 PM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/13/12/38/boy-160017_640.png"),
                  ),
                  title: Text("Mubeen Ahmad"),
                  subtitle: Text("Today,12:52 PM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/07/02/23/07/kid-1493932_640.jpg"),
                  ),
                  title: Text("Haroon Islam"),
                  subtitle: Text("Yesterday,12:45 PM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/10/30/17/32/boy-509488_640.jpg"),
                  ),
                  title: Text("ALi Gohar"),
                  subtitle: Text("Yesterday,5:12 AM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2013/07/12/14/47/boy-148779_640.png"),
                  ),
                  title: Text("Shahid Ullah"),
                  subtitle: Text("Yesterday,10:12 AM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        " https://cdn.pixabay.com/photo/2020/01/07/23/01/sketch-4748895_640.jpg"),
                  ),
                  title: Text("Ali Ahmad"),
                  subtitle: Text("Today,3:52 PM"),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/02/20/11/57/boy-2082270_640.jpg"),
                  ),
                  title: Text("Hamza Khan"),
                  subtitle: Text("Today,7:12 AM"),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
