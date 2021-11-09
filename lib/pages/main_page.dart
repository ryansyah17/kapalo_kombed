part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int? initialPage;

  MainPage({this.initialPage});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  // int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  // void initState() {
  //   super.initState();
  //   selectedPage = widget.initialPage!;
  //   pageController = PageController(initialPage: widget.initialPage!);
  // }

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black),
        elevation: 1,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              width: 40,
              height: 40,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/kapalo_kombed.png'),
              //   ),
              // ),
            ),
            Text(
              'Kapalo Kombed',
              style: GoogleFonts.irishGrover(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(child: Container(color: Colors.transparent)),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(child: HomePage()),
                Center(child: CategoryPage()),
                Center(
                    child: Container(
                  color: Colors.blue,
                )),
                Center(
                    child: Container(
                  color: Colors.green,
                )),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBarBottom(
        selectedIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          pageController.jumpToPage(selectedPage);
        },
      ),

      // ),
    );
  }
}
