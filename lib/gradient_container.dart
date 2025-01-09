import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  var actveDiceImage = 'assets/images/dice-1.png';

  void rolldice() {
    actveDiceImage = 'assets/images/dice-2.png';
    print('Changing');
  }

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                actveDiceImage,
                width: 200,
              ),
              SizedBox(height: 20),
              TextButton(
                  onPressed: rolldice,
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 28)),
                  child: Text('Roll dice'))
            ],
          ),
        ));
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//         colors: colors,
//         begin: startAligment,
//         end: endAligment,
//       )),
//       child: Center(child: StyledText('Hello World!')),
//     );
//   }
// }
