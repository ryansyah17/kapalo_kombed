part of 'pages.dart';

class TshirtCatePage extends StatefulWidget {
  const TshirtCatePage({Key? key}) : super(key: key);

  @override
  State<TshirtCatePage> createState() => _TshirtCatePageState();
}

class _TshirtCatePageState extends State<TshirtCatePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: mockTShirt.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500 / 2,
              childAspectRatio: 0.75,
            ),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return GridViewCard(product: mockTShirt[index]);
            },
          ),
        ),
      ],
    );
  }
}
