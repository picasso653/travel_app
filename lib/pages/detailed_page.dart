import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 70,
              child:
            Row(
              children: [
                IconButton(onPressed: (){},
                 icon: const Icon(Icons.menu),),
                 IconButton(onPressed: (){},
                  icon: const Icon(Icons.two_k))
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}