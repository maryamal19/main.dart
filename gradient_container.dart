import 'stytled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //constructor funcation,pada saat menampilkan gradient container,color1 dan color2 auto diterapkan
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1; //membuat variable bertipe Color dengan nama color1
  final Color color2; //membuat variable bertipe Color dengan nama color1

  //fungsi acakdadu yang dipanggil ketika button di-klik
  void acakdadu() {
    //isi dari fungsi acak dadu
    var activeDiceImage = 'assets/images/dice-3.png';

    void rollDice() {
      activeDiceImage = 'assets/images/dice-4.png';
    }
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'asset/images/dice-3.png',
              width: 200,
            ),
            TextButton(
              onPressed: acakdadu,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice!'),
            )
          ],
        ),
      ),
    );
  }
}
