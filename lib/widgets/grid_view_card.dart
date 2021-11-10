part of 'widgets.dart';

class GridViewCard extends StatefulWidget {
  final Product? product;
  final Widget? widget;

  GridViewCard(this.product, {this.widget});

  @override
  State<GridViewCard> createState() => _GridViewCardState();
}

class _GridViewCardState extends State<GridViewCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          height: 250,
          width: MediaQuery.of(context).size.width / 2.4,
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
                    image: NetworkImage(widget.product!.picture!),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 153,
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      widget.product!.title!,
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18),
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
                      'Rp ${widget.product!.price!.toString()},-',
                      style: GoogleFonts.poppins(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey),
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Icon(Icons.shopping_basket_sharp),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
