import 'package:flutter/material.dart';

class seleciona_ingrediente extends StatefulWidget {
  const seleciona_ingrediente({Key? key}) : super(key: key);

  @override
  _selecionaIngrediente createState() => new _selecionaIngrediente();
}

class _selecionaIngrediente extends State<seleciona_ingrediente> {
  final List<Map> data = List.generate(100,
      (index) => {'id': index, 'name': 'Item $index', 'isSelected': false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0, 1),
              colors: <Color>[
                Color(0xffb00000),
                Color(0xffca0404),
                Color(0xffd20606),
                Color(0xffd80808),
                Color(0xffe60c0c),
                Color(0xffed0d0d),
                Color(0xffdd2921),
                Color(0xffbb5541),
                Color(0xffa86f53),
                Color(0xff968663),
                Color(0xff82a075),
                Color(0xff70b987),
                Color(0xff5ec18a),
                Color(0xff4ec88d),
                Color(0xff3cb97d),
                Color(0xff30af72),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              height: 620,
              width: 400,
              child: Scaffold(
                body: SafeArea(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Card(
                        key: ValueKey(data[index]['name']),
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: data[index]['isSelected'] == true
                            ? Colors.amber
                            : Colors.blue,
                        child: ListTile(
                          onTap: () {
                            setState(
                              () {
                                data[index]['isSelected'] =
                                    !data[index]['isSelected'];
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}