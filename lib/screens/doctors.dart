import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_mobile/screens/navbar.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.only(left: 5),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: Container(
                          height: 40,
                          width: 40,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 180,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.brown.shade50,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.network(
                          "https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Anna Baker",
                                style: myStyle(
                                    20, FontWeight.bold, Colors.blue.shade900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Heart Surgeon Specialist",
                                style: myStyle(
                                    16, FontWeight.bold, Colors.blueGrey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Card(
                                    elevation: 2,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Rating",
                                          style: myStyle(16, FontWeight.bold,
                                              Colors.blueGrey),
                                        ),
                                        Text(
                                          "5 out of 5",
                                          style: myStyle(16, FontWeight.bold,
                                              Colors.blue.shade900),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Card(
                                    elevation: 2,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.emoji_people,
                                        color: Color(0xff0857DE),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Patient",
                                          style: myStyle(16, FontWeight.bold,
                                              Colors.blueGrey),
                                        ),
                                        Text(
                                          "1000+",
                                          style: myStyle(16, FontWeight.bold,
                                              Colors.blue.shade900),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Biography",
                            style: myStyle(
                                20, FontWeight.bold, Colors.blue.shade900),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu aliquet leo...',
                            style: GoogleFonts.robotoMono( fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
                            children: const <TextSpan>[
                              TextSpan(text: 'Read More', style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.blue)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Location",
                            style: myStyle(
                                20, FontWeight.bold, Colors.blue.shade900),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.network("https://t3.ftcdn.net/jpg/04/49/73/64/360_F_449736488_IAGo58o7DloC8Os5S5v9vppX3BIxzK4S.jpg",fit: BoxFit.fitWidth,)),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reviews",
                                style: myStyle(
                                    20, FontWeight.bold, Colors.blue.shade900),
                              ),
                              TextButton(onPressed: (){}, child: Text("See all",style: GoogleFonts.robotoMono(fontSize: 12,fontWeight:  FontWeight.bold),))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
