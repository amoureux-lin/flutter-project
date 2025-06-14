import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalPage extends ConsumerStatefulWidget {
  const PersonalPage({super.key});

  @override
  ConsumerState<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends ConsumerState<PersonalPage> {
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
                            Column(children: [
                              Icon(Icons.join_right),
                              Text("right")
                            ],),
                          ],
                        ),
                        SizedBox(height: 20,),
                        GridView.count(
                          shrinkWrap: true,
                          crossAxisSpacing: 10,
                          // mainAxisSpacing: 10,
                          crossAxisCount: 5,
                          children: [
                            Column(children: [
                              Icon(Icons.list_rounded),
                              Text("title")
                            ],),
                            Column(children: [
                              Icon(Icons.play_arrow_rounded),
                              Text("title")
                            ],),
                            Column(children: [
                              Icon(Icons.show_chart_rounded),
                              Text("title")
                            ],),
                            Column(children: [
                              Icon(Icons.shop_2_rounded),
                              Text("title")
                            ],),
                            Column(children: [
                              Icon(Icons.person_2_rounded),
                              Text("title")
                            ],),
                          ],
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
