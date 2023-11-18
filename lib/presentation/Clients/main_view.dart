import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kodikoss/domain/models.dart';
import 'package:kodikoss/presentation/entreprise/client_courses.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class PageviewGallery extends StatefulWidget {
  @override
  _PageviewGalleryState createState() => _PageviewGalleryState();
}

class _PageviewGalleryState extends State<PageviewGallery> {
  final PageController ctrl = PageController(
    viewportFraction: 0.75,
  );

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: ctrl,
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, int index) {
          // Active page
          bool active = index == currentPage;
          return _buildStoryPage(active);
        });
  }

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() {
      int pos = ctrl.page!.round();
      if (currentPage != pos) {
        {
          setState(() {
            currentPage = pos;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }
}

_buildStoryPage(bool active) {
  // Animated Properties
  final double blur = active ? 30 : 0;
  final double offset = active ? 20 : 0;
  final double top = active ? 100 : 200;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeOutQuint,
    margin: EdgeInsets.only(top: top, bottom: 50, right: 30),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ]),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;
  TextEditingController textEditingController = TextEditingController();
  final List<Map<String, dynamic>> allUsers = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Cavers", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];

  final List<annonce> annonces = [
    annonce(
        image: "assets/images/a1.png",
        name: '''Breaking News: The Dawn of a New 
    Cure - Unveiling a Revolutionary
                 Breakthrough'''),
    annonce(
        image: "assets/images/a2.png", name: '''Hope Unveiled: Promising Cures
    on the Horizon - A Glimpse into 
     Tomorrow's Breakthroughs!'''),
    annonce(
        image: "assets/images/a3.png", name: '''Trailblazing Cures Transforming
     the Landscape of Medicin''')
  ];
  final List<Course> courses = [
    Course(
        courseName: "Primar Emergencies  formation .",
        date: "date",
        image: "assets/images/c1.png",
        detail: '''Your guide to be a profiecent in emergency 
  cases , saidal’s formation is here now ... etc'''),
    Course(
        courseName: "Nursery  formation .",
        date: "date",
        image: "assets/images/c2.png",
        detail: '''Your guide to be a profiecent in nursery  ,
    BIOFARM is announcing the lastest formationin 
   this field  ... etc'''),
    Course(
        courseName: "Health care assistant formation .",
        date: "date",
        image: "assets/images/c3.png",
        detail: '''helping with patient care, monitoring vital signs, 
  assisting with daily activities, and providing 
  emotional support to patients'''),
  ];
  List<Map<String, dynamic>> foundUsers = [];
  @override
  initState() {
    foundUsers = allUsers;
    super.initState();
  }

  void filter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = allUsers;
    } else {
      results = allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      foundUsers = results;
    });
  }

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      i == 0
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            )
          : i == 1
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CoursesView()))
              : Navigator.push(
                  context, MaterialPageRoute(builder: (context) => editProfile()));
    });
  }

  Widget _buildItemList(BuildContext context, int index) {
    if (index == annonces.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index == 1
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: Text("    What’sNew !!",
                      style: TextStyle(
                          color: Color(0xff5FAAB6),
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
                )
              : Text(""),
          SizedBox(
            width: 200,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(annonces[index].image))),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '${annonces[index].name}',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 10, left: 10),
                child: TextField(
                  onChanged: (value) => filter(value),
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff5B6061),
                    ),
                    suffixIcon: IconButton(
                      icon: const ImageIcon(
                        AssetImage("assets/images/mecro.png"),
                        color: Color(0xff5B6061),
                      ),
                      onPressed: () {
                        setState(() {
                          textEditingController.clear();
                          foundUsers = allUsers;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Color(0X305FAAB6),
                    hintText: 'Search...',
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ScrollSnapList(
                    itemBuilder: _buildItemList,
                    itemSize: 150,
                    dynamicItemSize: true,
                    onReachEnd: () {
                      print('Done!');
                    },
                    itemCount: annonces.length,
                    onItemFocus: (int) {},
                  ),
                )),
            Row(
              children: [
                Image(
                  image: AssetImage("assets/images/Calendar.png"),
                ),
                Image(image: AssetImage("assets/images/TODAY.png")),
                SizedBox(
                  width: 148,
                ),
                Image(
                  image: AssetImage("assets/images/buy.png"),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 170,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: courses.length,
                    itemBuilder: (context, index) {
                      Course items = courses[index];
                      return ListTile(
                        leading: Image(image: AssetImage(items.image)),
                        title: Text(items.courseName),
                        subtitle: Text(items.detail),
                        // Add more widgets or customize as needed
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Likes
            DotNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home.png")),
              selectedColor: Color(0xff5FAAB6),
            ),

            /// Search
            DotNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/course.png"),
              ),
              selectedColor: Color(0xff5FAAB6),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/profile.png")),
              selectedColor: Color(0xff5FAAB6),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
