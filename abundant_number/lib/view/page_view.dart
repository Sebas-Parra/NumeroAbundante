import 'package:abundant_number/controller/number_controller.dart';
import 'package:abundant_number/widget/calculate_buttom.dart';
import 'package:abundant_number/widget/number_imput.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = NumberController();
  final numb = TextEditingController();

  void _calculate(){
    final result = controller.calNUmber(numb.text);

    Navigator.pushNamed(context, '/result', arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abundant Number'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NumberImput(controller: numb, label: 'Number'),
            SizedBox(height: 19),
            CalculateButton(onPressed: _calculate),
          ],
        ),
        )
    );
  }
}