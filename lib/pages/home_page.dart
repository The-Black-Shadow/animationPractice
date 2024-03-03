import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double top = 0;
  double left = 0;
  Color color = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            top = MediaQuery.of(context).size.height * 0.30;
                            left = MediaQuery.of(context).size.width * 0.09;
                          });
                        },
                        child: const Text('Change Image Position')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color = Colors.deepPurple;
                          });
                        },
                        child: const Text('Change Color')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            top = MediaQuery.of(context).size.height * 0;
                            left = MediaQuery.of(context).size.width * 0;
                          });
                        },
                        child: const Text('Revert Image Position')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color = Colors.greenAccent;
                          });
                        },
                        child: const Text('Revert Color')),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IconButton(
                        onPressed: () => {}, icon: const Icon(Icons.menu)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IconButton(
                        onPressed: () => {}, icon: const Icon(Icons.search)),
                  ),
                ],
              ),
              const Text(
                'Hey, Welcome Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: top,
          left: left,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/image1.png',
              height: 150,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
