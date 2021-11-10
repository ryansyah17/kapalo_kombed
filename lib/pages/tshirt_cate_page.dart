part of 'pages.dart';

class TshirtCatePage extends StatelessWidget {
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
                      'O-Neck',
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
                  children: mockTShirt.map((e) => GridViewCard(e)).toList(),
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
                      'V-Neck',
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
                  children: mockTShirt.map((e) => GridViewCard(e)).toList(),
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
                      'OverSize',
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
                  children: mockTShirt.map((e) => GridViewCard(e)).toList(),
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
                      'Polo',
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
                  children: mockTShirt.map((e) => GridViewCard(e)).toList(),
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
                      'TurtleNeck',
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
                  children: mockTShirt.map((e) => GridViewCard(e)).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
