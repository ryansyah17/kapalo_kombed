part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  int selectedIndex = 0;
  // ignore: unused_field
  int _current = 0;
  // ignore: unused_field
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://th.bing.com/th/id/R.a158d5fa147dd7c92533359ee73bbf92?rik=kWxpSZ%2fbQMtZjg&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fcWKcPiY.jpg&ehk=JaaBSU0c%2bDvJDQ6BFLGU4bL%2fF5vHU4TXpxTFXf9Scp8%3d&risl=&pid=ImgRaw&r=0',
      'https://vignette.wikia.nocookie.net/wearewarriors/images/6/61/Dark_Forest.jpg/revision/latest?cb=20180831145259',
      'https://image.winudf.com/v2/image/Y29tLkRyZWFtV2FsbHBhcGVycy5EYXJrRm9yZXN0MDFfc2NyZWVuc2hvdHNfMV82Y2RhODMwMA/screen-1.jpg?fakeurl=1&type=.jpg',
      'https://th.bing.com/th/id/R.ab730af25c7f5cb2cec45302fdc7f1e7?rik=5qUxk2bU%2fB1LfQ&riu=http%3a%2f%2fcdn.paperhi.com%2f1366x911%2f20130315%2flandscapes+nature+path+dark+forest+foggy+morning+view+1366x911+wallpaper_www.paperhi.com_78.jpg&ehk=u5JgdShrCcKFdHBrJgWWYkilYGL4s2iEOgq9Utw8r8A%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/OIP.hR5gRMB5vOALUfucJxx1zwHaEK?w=289&h=180&c=7&r=0&o=5&pid=1.7',
      'https://th.bing.com/th/id/OIP.G5Y3K6BT8FV9CGmIJU9DmwHaEo?w=281&h=180&c=7&r=0&o=5&pid=1.7',
      'https://th.bing.com/th/id/R.213c0bd7a38a3806e2a4f16e0d171c32?rik=SB8i7r0jAnexnQ&riu=http%3a%2f%2fpavbca.com%2fwalldb%2foriginal%2f8%2f1%2f7%2f385598.jpg&ehk=ikYXpDV3wEALvzrEZyaJch%2bmIeL4Cpa%2fWilUP0ARxvs%3d&risl=&pid=ImgRaw&r=0',
      'https://wallpapercave.com/wp/wp2784978.jpg',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: [
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              color: Colors.white,
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: NetworkImage(
              //             'https://images6.alphacoders.com/547/547738.jpg'),
              //         fit: BoxFit.cover)),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Perfect Fashion',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('To Perfect Style',
                                      style: GoogleFonts.poppins(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                             
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 50,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 20, top: 15),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0.3,
                                    blurRadius: 1,
                                  )
                                ],
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Container(
                                    child: Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Search Product',
                                          style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            color: Colors.grey.withOpacity(0.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: CarouselSlider(
                              items: imageSliders,
                              options: CarouselOptions(
                                height: 160.0,
                                autoPlay: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 7.0,
                                    height: 7.0,
                                    margin: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 4.0,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black)
                                          .withOpacity(
                                        _current == entry.key ? 0.9 : 0.3,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                CustomTabBar(
                                  titles: [
                                    'T-Shirt',
                                    'Hoodie',
                                    'Crewneck',
                                    'Shoes',
                                    'Bracelet',
                                  ],
                                  selectedIndex: selectedIndex,
                                  onTap: (index) {
                                    setState(() {
                                      selectedIndex = index;
                                      print(selectedIndex);
                                    });
                                  },
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'New Product',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Text(
                                        'See All',
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            decoration:
                                                TextDecoration.underline),
                                      ))
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    width: 375,
                                    child: (selectedIndex == 0)
                                        ? TshirtPage()
                                        : (selectedIndex == 1)
                                            ? HoodiePage()
                                            : (selectedIndex == 2)
                                                ? CrewneckPage()
                                                : (selectedIndex == 3)
                                                    ? ShoesPage()
                                                    : BraceletPage()),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Popular',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          'See All',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    width: 375,
                                    child: (selectedIndex == 0)
                                        ? TshirtPage()
                                        : (selectedIndex == 1)
                                            ? HoodiePage()
                                            : (selectedIndex == 2)
                                                ? CrewneckPage()
                                                : (selectedIndex == 3)
                                                    ? ShoesPage()
                                                    : BraceletPage()),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )
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
