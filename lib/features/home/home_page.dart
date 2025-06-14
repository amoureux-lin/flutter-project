
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
              Colors.green[100]?? Colors.green,Colors.white
            ])
          ),
          child: Stack(
            children: [
              Flex(
                  direction: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75),
                              image: DecorationImage(
                                image: AssetImage('image/avatar.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("余生"),
                              Text("￥3000")
                            ],),
                          ),
                        ],),
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.all(10),
                          color: Colors.blue,
                          child: Text("Right"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      color: Colors.blue,
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        children: [
                          Icon(Icons.abc),
                          Icon(Icons.abc),
                          Icon(Icons.abc),
                          Icon(Icons.abc),
                        ],
                      ),
                    )
                  ]
              ),
          ],
          )
        )
      ),
    );
  }
}
