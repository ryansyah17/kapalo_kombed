part of 'widgets.dart';

class CustomTab extends StatelessWidget {
  final int? selectedIndex;
  final List<String>? titles;
  final Function(int)? onTap;

  CustomTab({
    @required this.titles,
    this.selectedIndex,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 50,
        child: Stack(
          children: [
            Row(
                children: titles!
                    .map((e) => GestureDetector(
                          onTap: () {
                            if (onTap != null) {
                              onTap!(titles!.indexOf(e));
                            }
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          (titles!.indexOf(e) == selectedIndex)
                                              ? Colors.black
                                              : Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(color: Colors.grey)),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: (titles!.indexOf(e) ==
                                              selectedIndex)
                                          ? greyFontStyle.copyWith(fontSize: 15)
                                          : blackFontStyle2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
