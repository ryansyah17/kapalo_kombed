part of 'pages.dart';

class BraceletCatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: mockBracelet.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500 / 2,
            childAspectRatio: 0.75,
          ),
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GridViewCard(product: mockBracelet[index]);
          },
        ),
      ),
    );
  }
}
