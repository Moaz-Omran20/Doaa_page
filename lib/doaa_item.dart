import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaaItem extends StatefulWidget {
  String doaa;
  int counter;
  static int finishCount = 19;

  DoaaItem({required this.doaa, required this.counter});

  @override
  State<DoaaItem> createState() => _DoaaItemState();
}

class _DoaaItemState extends State<DoaaItem> {
  @override
  Widget build(BuildContext context) {
    return DoaaItem.finishCount == 0
        ? Center(
            child: Column(
              children: [
                const Text(
                  "!احسنت , لقد انهيت ادعية اليوم",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB7935F)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/done1.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          )
        : Visibility(
            visible: widget.counter == 0 ? false : true,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .86,
                          child: Text(
                            textAlign: TextAlign.center,
                            widget.doaa,
                            style: GoogleFonts.amiri(
                                fontSize: 25, color: const Color(0xFFB7935F)),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            widget.counter--;
                            DoaaItem.finishCount--;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB7935F),
                          ),
                          child: const Text("تم"),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "${widget.counter}:التكرارات المتبقيه",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .1),
                      width: 300,
                      child: const Divider(
                        thickness: 2,
                        color: Color(0xFFB7935F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
