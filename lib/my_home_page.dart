import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  List<String> textLists = [
    'Demo data',
    'Demo data',
    'Demo data',
    'Demo data',
    'Demo data',
    'Demo data',
    'Demo data',
    'Demo data',
  ];

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
      ),
      body: isPortrait
          ? SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 30, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.black,
                        child: Icon(
                          size: 60,
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      'Deven Joshi',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    ...textLists
                        .map(
                          (text) => Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                text,
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            )
          : Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.black,
                          child: Icon(
                            size: 60,
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          'Deven Joshi',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 20,
                    ),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: textLists
                          .map(
                            (text) => Column(
                              children: [
                                Text(
                                  text,
                                  style: const TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
