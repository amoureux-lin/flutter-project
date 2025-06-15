
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
        child: SingleChildScrollView(child: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header
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
                                  image: AssetImage('images/avatar.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("用户昵称"),
                                  Row(children: [
                                    Text("金币：10000"),
                                    GestureDetector(
                                      onTap: () {
                                        // 处理点击事件
                                        print("图标被点击了");
                                      },
                                      child: const Icon(Icons.add_circle_rounded),
                                    )
                                  ],)
                                ],),
                            ),
                          ],),
                          OutlinedButton.icon(
                            onPressed: () {
                              // TODO: 处理搜索点击事件
                            },
                            icon: const Icon(Icons.search, color: Colors.black), // 搜索图标
                            label: const Text(
                              "搜索",
                              style: TextStyle(color: Colors.black), // 文字颜色
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide.none,
                              backgroundColor: Colors.black12, // 背景白色
                              foregroundColor: Colors.black, // ripple 效果等前景颜色
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // 圆角
                              ),
                              elevation: 2, // 阴影
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      //菜单
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Icon(Icons.leaderboard),
                            Text("排行榜")
                          ],),
                          Column(children: [
                            Icon(Icons.task),
                            Text("任务")
                          ],),
                          Column(children: [
                            Icon(Icons.shop_2_rounded),
                            Text("商城")
                          ],),
                          Column(children: [
                            Icon(Icons.emoji_emotions),
                            Text("好友在玩")
                          ],),
                        ],
                      ),
                      SizedBox(height: 20,),
                      //匹配
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 15,
                        children: [
                          Expanded(
                            flex: 1,
                            child:Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                spacing: 15,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: Icon(Icons.access_alarms_rounded),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("随机匹配"),
                                      Text("游戏派对")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child:Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                spacing: 15,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: Icon(Icons.access_alarms_rounded),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("随机匹配"),
                                      Text("游戏派对")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("PLAYER 游乐园"),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text("最近常玩"),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  // 点击事件
                                },
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                  backgroundColor: Colors.black12, // 背景白色
                                  foregroundColor: Colors.black, // ripple 效果等前景颜色
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min, // 根据内容压缩宽度
                                  children: const [
                                    Icon(Icons.image),
                                    SizedBox(width: 8),
                                    Text("五子棋对战"),
                                    SizedBox(width: 8),
                                    Icon(Icons.arrow_right),
                                  ],
                                ),
                              )
                            ],
                          ),

                          OutlinedButton(
                            onPressed: () {
                              // 点击事件
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide.none,
                              backgroundColor: Colors.black12, // 背景白色
                              foregroundColor: Colors.black, // ripple 效果等前景颜色
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min, // 根据内容压缩宽度
                              children: const [
                                Icon(Icons.door_back_door_outlined),
                                Text("桌游房间"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Flex(direction: Axis.vertical,children: [
                        Row(
                          spacing: 10,
                          children: [
                            Expanded(flex: 1,child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                            Expanded(flex: 1,child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                          ],)
                      ],),
                      SizedBox(height: 10,),
                      Flex(direction: Axis.vertical,children: [
                        Row(
                          spacing: 10,
                          children: [
                            Expanded(flex: 1,child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                            Expanded(flex: 1,child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                          ],)
                      ],),

                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text("精选派对"),
                              ),
                            ],
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // 点击事件
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide.none,
                              backgroundColor: Colors.black12, // 背景白色
                              foregroundColor: Colors.black, // ripple 效果等前景颜色
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min, // 根据内容压缩宽度
                              children: const [
                                Text("游戏大厅"),
                                Icon(Icons.arrow_right),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Flex(direction: Axis.vertical,children: [
                        Row(
                          spacing: 10,
                          children: [
                            Expanded(flex: 1,child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                            Expanded(flex: 1,child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("game"),
                            )),
                          ],)
                      ],),
                    ]
                ),
              ],
            )
        ),)
      ),
    );
  }
}
