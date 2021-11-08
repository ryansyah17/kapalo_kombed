part of 'widgets.dart';

class NavBarBottom extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;
  const NavBarBottom({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 65,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: 65,
          ),
          CustomPaint(
            size: Size(size.width, 80),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(Icons.shopping_basket),
              elevation: 0.1,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopingCartPage(),
                  ),
                );
              },
            ),
          ),
          Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: selectedIndex == 0
                          ? Colors.black
                          : Colors.grey.shade400,
                    ),
                    onPressed: () {
                      // setBottomBarIndex(0);

                      if (onTap != null) {
                        onTap!(0);
                      }
                    },
                    splashColor: Colors.white,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.category,
                      color: selectedIndex == 1
                          ? Colors.black
                          : Colors.grey.shade400,
                    ),
                    onPressed: () {
                      // setBottomBarIndex(1);
                      if (onTap != null) {
                        onTap!(1);
                      }
                    }),
                Container(
                  width: size.width * 0.20,
                ),
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: selectedIndex == 2
                          ? Colors.black
                          : Colors.grey.shade400,
                    ),
                    onPressed: () {
                      // setBottomBarIndex(2);
                      if (onTap != null) {
                        onTap!(2);
                      }
                    }),
                Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.notes,
                        color: selectedIndex == 3
                            ? Colors.black
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        // setBottomBarIndex(3);
                        if (onTap != null) {
                          onTap!(3);
                        }
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
