part of 'widgets.dart';

class CardPage extends StatefulWidget {
  final Product? product;
  final Widget? widget;

  CardPage(this.product, {this.widget});
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.all(10),
          width: 138,
          height: 167,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 100,
                    width: 138,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(widget.product!.picture!),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    width: 110,
                    height: 20,
                    child: Text(
                      widget.product!.title!,
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 110,
                    height: 20,
                    child: Text(
                      'Rp ${widget.product!.price!},-',
                      style: GoogleFonts.poppins(
                          color: Colors.orange, fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
