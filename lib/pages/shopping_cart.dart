part of 'pages.dart';

class ShopingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              'shopping cart',
              style: GoogleFonts.irishGrover(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ],
        centerTitle: true,
      ),
    );
  }
}
