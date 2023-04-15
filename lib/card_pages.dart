import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class CardPages extends StatefulWidget {
  const CardPages({Key? key}) : super(key: key);

  @override
  State<CardPages> createState() => _CardPagesState();
}

class _CardPagesState extends State<CardPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlimyCard(
            color: Colors.blue,
            topCardWidget: topCardWidget(),
            bottomCardWidget: bottomCardWidget(),
          )
        ],
      ),
    );
  }

  Widget topCardWidget() {
    return Column(
      children: [
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/a1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Flutter Developer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  Widget bottomCardWidget() {
    return const Text(
      'Abone Ol',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
