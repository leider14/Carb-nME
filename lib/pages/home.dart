import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//temperatura, humedad, presión atmosférica y niveles de gases
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: 
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenido, Usuario",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18
                        ),
                      ),
                      Text(
                        "El dia esta normal",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 15
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.black,
                  )
                ],
              )
                
            ),
            const SizedBox(height: 10,),
            Bounce(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 241, 113, 113),
                      ),
                      Positioned(
                        right: -20,
                        bottom: -20,
                        child: Image.asset(
                          height: 150,
                          "assets/temperatura.png"
                        )
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(
                          left: 10
                        ),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Temperatura",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30
                              ),
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                backgroundColor: Color.fromARGB(30, 0, 0, 0),
                                value: 0.6,
                                semanticsLabel: "semantic",
                                strokeCap: StrokeCap.round,
                                strokeWidth: 7,
                              ),
                            ),
                            Text(
                              "18°",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bounce(
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width / 2 ) - 25,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 55, 153, 238),
                          ),
                          Positioned(
                            right: -20,
                            bottom: -20,
                            child: Image.asset(
                              height: 130,
                              "assets/alta-presion.png",
                              fit: BoxFit.cover,
                            )
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(
                              left: 10
                            ),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Presión",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    backgroundColor: Color.fromARGB(30, 0, 0, 0),
                                    value: 0.6,
                                    semanticsLabel: "semantic",
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 7,
                                  ),
                                ),
                                Text(
                                  "18°",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Bounce(
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width / 2 ) - 25,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                            color: Color.fromARGB(255, 58, 64, 70),
                          ),
                          Positioned(
                            right: -20,
                            bottom: -20,
                            child: Image.asset(
                              height: 130,
                              "assets/gas.png",
                              fit: BoxFit.cover,
                            )
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(
                              left: 10
                            ),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Gas",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    backgroundColor: Color.fromARGB(30, 0, 0, 0),
                                    value: 0.6,
                                    semanticsLabel: "semantic",
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 7,
                                  ),
                                ),
                                Text(
                                  "18°",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Bounce(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 146, 98, 224),
                      ),
                      Positioned(
                        right: -20,
                        bottom: -20,
                        child: Image.asset(
                          height: 150,
                          "assets/humedad.png"
                        )
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(
                          left: 10
                        ),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Humedad",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30
                              ),
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                backgroundColor: Color.fromARGB(30, 0, 0, 0),
                                value: 0.6,
                                semanticsLabel: "semantic",
                                strokeCap: StrokeCap.round,
                                strokeWidth: 7,
                              ),
                            ),
                            Text(
                              "18°",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}