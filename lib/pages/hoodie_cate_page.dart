part of 'pages.dart';

class HoodieCatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Hoodie',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Sweater',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Bomber',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Parka & Varsity',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Track Top',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Denim',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mockHoddie.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
