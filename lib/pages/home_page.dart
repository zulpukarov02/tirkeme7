import 'package:flutter/material.dart';

import 'package:tirkeme7/pages/GuizButton.dart';
import 'package:tirkeme7/pages/rezult.dart';

import 'model/guiz_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Сиз бул тесттен ...'),
              content: Text(
                'Туура жооптор ${tuuraJooptor.length}. Ката жооптор ${kataJooptor.length}',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      jooptor.clear();
                      tuuraJooptor.clear();
                      kataJooptor.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Жаныдан баштоо'),
                ),
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            const Spacer(),
            //1
            GuizButton(
              tuuraButtonBu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            //2
            GuizButton(
              tuuraButtonBu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: jooptor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return jooptor[i]
                      ? const ResultIcon(tuuraIconbu: true)
                      : const ResultIcon(tuuraIconbu: false);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма - 07',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
