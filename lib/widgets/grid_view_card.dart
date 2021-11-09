part of 'widgets.dart';

class GridViewCard extends StatelessWidget {
  final Product? product;

  GridViewCard({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(70),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product!.picture!),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 155,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    product!.title!,
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Rp ${product!.price!.toString()},-',
                    style: GoogleFonts.poppins(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ClipOval(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.shopping_basket_sharp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
