import 'package:azkar/custom_button.dart';
import 'package:azkar/custom_item.dart';
import 'package:azkar/custom_text.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
  AzkarScreen({super.key});

  PageController controller = PageController();

  List<ZekrItem> items = [
    ZekrItem(
      zekrTitle: "سبحان الله",
      backgroundColor: Colors.amber,
    ),
    ZekrItem(zekrTitle: "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ"),
    ZekrItem(
        zekrTitle: "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّه",
        backgroundColor: Colors.blue),
    ZekrItem(
        zekrTitle: "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
        backgroundColor: Colors.blueGrey),
    ZekrItem(
        zekrTitle:
            "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ"),
    ZekrItem(
        zekrTitle:
            "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ. "),
    ZekrItem(zekrTitle: "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ "),
    ZekrItem(zekrTitle: "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ "),
    ZekrItem(
        zekrTitle:
            "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد "),
    ZekrItem(zekrTitle: "أستغفر الله"),
    ZekrItem(
        zekrTitle:
            "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ "),
    ZekrItem(
      zekrTitle: "لَا إِلَهَ إِلَّا اللَّهُ ",
    ),
    ZekrItem(
      zekrTitle: "الْلَّهُ أَكْبَرُ ",
    ),
    ZekrItem(
      zekrTitle:
          "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي. ",
    ),
    ZekrItem(
      zekrTitle:
          "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ. ",
    ),
    ZekrItem(
        zekrTitle:
            "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً. "),
    ZekrItem(
        zekrTitle:
            "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ. "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: PageView(
            children: items,
          ),
        ),
      ),
    );
  }
}

int increaseCounter(int counter) {
  counter = counter + 1;
  return counter;
}

class ZekrItem extends StatefulWidget {
  ZekrItem(
      {super.key,
      required this.zekrTitle,
      this.counter = 0,
      this.backgroundColor = Colors.cyan});
  String zekrTitle;
  int counter;
  Color backgroundColor;
  @override
  State<ZekrItem> createState() => _ZekrItemState();
}

class _ZekrItemState extends State<ZekrItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomItem(
                    title: widget.zekrTitle,
                    counter: widget.counter,
                    backgroundColor: widget.backgroundColor),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: CustomElevatedButton(
                    onPressedFunction: () {
                      setState(() {
                        widget.counter = increaseCounter(widget.counter);
                      });
                      print(widget.counter);
                    },
                    buttonTitle: "+",
                    widthOfButton: double.infinity,
                    // paddingEdgeInsets: EdgeInsets.symmetric(vertical: 70),
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            onPressedFunction: () {
              setState(() {
                widget.counter = 0;
              });
              print(widget.counter);
            },
            buttonTitle: "Reset",
            widthOfButton: double.infinity,
          ),
        ],
      ),
    );
  }
}
