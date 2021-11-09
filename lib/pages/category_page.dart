part of 'pages.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'buy your',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Desire Fashion',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: CustomTabBarCate(
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
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: (selectedIndex == 0)
                        ? TshirtCatePage()
                        : (selectedIndex == 1)
                            ? HoodieCatePage()
                            : (selectedIndex == 2)
                                ? CrewneckCatePage()
                                : (selectedIndex == 3)
                                    ? ShoesCatePage()
                                    : BraceletCatePage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
