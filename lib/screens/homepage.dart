import 'package:flutter/material.dart';
import 'package:medical_mobile/models/tag_list.dart';
import 'package:medical_mobile/screens/doctors.dart';
import 'package:medical_mobile/screens/navbar.dart';

class HomePage extends StatelessWidget {
  TextEditingController? searchController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5FC),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.grid_view_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 7,
                          child: Column(
                            children: [
                              Text(
                                "Current Location",
                                style:
                                    myStyle(16, FontWeight.w600, Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  Text(
                                    "Dhaka,BD",
                                    style: myStyle(
                                      16,
                                      FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Card(
                        elevation: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/vectors/cute-nurse-smiling-cartoon-characterafrican-american-girl-styleflat-vector-id936682474?k=6&m=936682474&s=170667a&w=0&h=lu8z5m-rKafHTrHdUigV7dW-DpKSVAQ3tCrNlMAoLws=")),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Card(
                  shadowColor: Color(0xff9E9E9EC5),
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    cursorHeight: 25,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_outlined),
                        hintText: "Search for a doctor or health issue",
                        hintStyle: myStyle(
                          14,
                          FontWeight.bold,
                          Colors.grey,
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcomming Schedule",
                      style: myStyle(
                        22,
                        FontWeight.bold,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("See All"))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0857DE),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/vectors/cute-nurse-smiling-cartoon-characterafrican-american-girl-styleflat-vector-id936682474?k=6&m=936682474&s=170667a&w=0&h=lu8z5m-rKafHTrHdUigV7dW-DpKSVAQ3tCrNlMAoLws="),
                            ),
                            title: Text(
                              "Dr. Haley Lawrence",
                              style: myStyle(15, FontWeight.bold, Colors.white),
                            ),
                            subtitle: Text(
                              "Dermatologists",
                              style: myStyle(15, FontWeight.w300, Colors.white),
                            ),
                            trailing: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.video_call_outlined),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 80,
                            margin: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xff004DD4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Sun,Jan 19, 8.00am-10.00am",
                                    style: myStyle(
                                        15, FontWeight.w500, Colors.white))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 320,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(150, 70),
                          bottomLeft: Radius.elliptical(150, 70),
                        ),
                        color: Color(0xff90B3F0),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 280,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(150, 70),
                          bottomLeft: Radius.elliptical(150, 70),
                        ),
                        color: Color(0xffD6E2FA),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's find your doctor",
                      style: myStyle(
                        22,
                        FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.category_outlined,
                          size: 35,
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Doctors()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.blue[50],
                                      child: Text("${tag[index].icon}")),
                                  Text("${tag[index].name}")
                                ]),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: tag.length),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.support_agent),
                  title: Text("Dr. Anna Baker"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Heart Surgeon"),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text('5 | 120 Reviews')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
