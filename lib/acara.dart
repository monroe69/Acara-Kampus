import 'package:flutter/material.dart';

import 'package:try1/widgets/card_acara.dart';

class AcaraKampus extends StatelessWidget {
  const AcaraKampus({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        centerTitle: true,
        title: const Text("Acara Kampus"),
      );
    }

    Widget content() {
      const itemList = [
        'test',
        'test',
        'test',
        'test',
      ];
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CardAcara();
        },
        itemCount: itemList.length,
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
