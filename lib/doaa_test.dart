import 'package:ahadeeth/doaa_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaaPageTest extends StatefulWidget {
  const DoaaPageTest({Key? key}) : super(key: key);

  @override
  State<DoaaPageTest> createState() => _DoaaPageTestState();
}

class _DoaaPageTestState extends State<DoaaPageTest> {
  String doaa = '';
  List<String> allDoaa = [];
  List<int> counters = [4, 5, 3, 7];

  @override
  void initState() {
    rootBundle.loadString('assets/files/doaa.txt').then((value) {
      setState(() {
        doaa = value;
        allDoaa = doaa.split('،');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/home_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'دعاء',
              style: GoogleFonts.amiri(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return DoaaItem(
                        doaa: allDoaa[index], counter: counters[index]);
                  },
                  itemCount: allDoaa.length,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
