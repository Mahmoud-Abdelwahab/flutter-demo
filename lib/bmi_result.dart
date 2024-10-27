import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int age;
  final String result;
  final double height;
  final int weight;
  final bool isMale;

  const BmiResult({
    required this.age,
    required this.result,
    required this.isMale,
    required this.height,
    required this.weight
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'AGE:',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' $age',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Gender:',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' ${isMale ? "Male": "Femal"}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Height:',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' ${height.round()}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Weight:',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' $weight',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI Result:',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    result,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
