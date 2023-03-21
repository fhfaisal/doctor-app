
import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CallDamo extends StatefulWidget {
  const CallDamo({super.key});

  @override
  State<CallDamo> createState() => _CallDamoState();
}

class _CallDamoState extends State<CallDamo> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("https://i0.wp.com/parkview.com.bd/wp-content/uploads/2022/12/Dr-Showkat-Hosen.jpg?fit=600%2C600&ssl=1"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
            child: Positioned(
                child: Column(
                  children: [
                    Expanded(
                        flex: 13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Container(
                                  height: 150,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 5,
                                        height: 80,
                                        color: Colors.blue,
                                      ),
                                      Icon(Icons.volume_up),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 130,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.brown.shade50,
                                  image: DecorationImage(
                                      image: NetworkImage("https://cdn-icons-png.flaticon.com/512/3774/3774299.png")),
                                  borderRadius: BorderRadius.circular(25)),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 10,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dermatologists",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dr. Haley lawrence",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.5),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(50)),
                                    ),
                                    Text(
                                      "5.46",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                )),
          )
        ]),
        // bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.blue,
        //     animationDuration: Duration(milliseconds: 200),
        //     buttonBackgroundColor: Colors.black,
        //     color: Colors.blue,
        //     items: [
        //       Icon(Icons.videocam_off_outlined,size: 35,color: Colors.white,),
        //       Icon(Icons.mic_external_off_outlined,size: 35,color: Colors.white,),
        //       Icon(Icons.call_end_outlined,size: 35,color: Colors.white,),
        //       Icon(Icons.message_outlined,size: 35,color: Colors.white,),
        //       Icon(Icons.more_vert_outlined,size: 35,color: Colors.white,)
        //     ]
        // ),

      ),
    );
  }
}