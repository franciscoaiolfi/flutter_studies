import 'package:flutter/material.dart';
import 'package:flutter_lessons/custom_widgets/glassmorphism.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Wrapper
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(255, 149, 150, 167),
        alignment: Alignment.center,
        child: Glassmorphism(
          blur: 5,
          opacity: .1,
          child: Container(
            color: Color.fromARGB(90, 16, 111, 139),
            width: 80,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contador'),
                Text(counter.toString()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 36, 96, 165),
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        counter += 1;
                      });
                    },
                    // onPanStart: (_) {
                    //   //Informa que é um void
                    //   setState(() {
                    //     counter += 1;
                    //   });
                    // },
                    child: Icon(Icons.add, color: Colors.white)),
                label: ''),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    child: Icon(Icons.restart_alt, color: Colors.white)),
                label: ''),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (counter > 0) {
                          counter -= 1;
                        }
                      });
                    },
                    child: Icon(Icons.remove, color: Colors.white)),
                label: ''),
          ]),
    );
  }
}
