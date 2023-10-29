import 'package:flutter/material.dart';
import 'package:srchout/checkOut.dart';

class BikeDetails extends StatelessWidget{
  const BikeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: Container(
        width: screenWidth,
        height: 47,
        decoration: BoxDecoration(
            border: Border(top:BorderSide(width: 2,color: const Color(0xffE5E5E5).withOpacity(0.86)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(left: screenWidth*0.09),
              child: Image.asset("assets/images/Home.png",fit: BoxFit.fill,),
            ),

            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/Map Marker.png",fit: BoxFit.fill,),
            ),

            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/Card Wallet.png",fit: BoxFit.fill,),
            ),

            Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: screenWidth*0.106),
              child: Image.asset("assets/images/Settings.png",fit: BoxFit.fill,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //BackButton
            Container(
              width: screenWidth*0.9,
              margin: EdgeInsets.only(top: 60,left: screenWidth*0.058),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop(MaterialPageRoute(builder: (context) => const BikeDetails()));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffC4C4C4).withOpacity(0.71),
                            const Color(0xffC4C4C4).withOpacity(0),
                          ]
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),

                  Container(
                    width: screenWidth*0.73,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xffBABABA))
                    ),
                    child: const Text("Bike Details",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Color(0xff000000)),),
                  )
                ],
              ),
            ),

            //BikeDetails
            Container(
              width: screenWidth*0.9,
              margin: const EdgeInsets.only(top: 33),
              height: 282,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Indian",
                           style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: 22,
                               color: Color(0xff000000)),),

                         Text("Scout Bobber",
                           style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: 21,
                               color: Color(0xff000000)),),
                       ],
                     ),

                      Container(
                        width: 136,
                        height: 63,
                        padding: const EdgeInsets.only(left: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xffBABABA))
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Category",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff8C7E7E)),),

                            Text("Cruiser",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff000000)),),
                          ],
                        ),
                      ),

                      Container(
                        width: 136,
                        height: 63,
                        padding: const EdgeInsets.only(left: 11),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xffBABABA))
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Displacement",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff8C7E7E)),),

                            Text("1133 cc",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff000000)),),
                          ],
                        ),
                      ),


                    ],
                  ),

                  Container(
                    width: screenWidth*0.541,
                    height: 282,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffBABABA).withOpacity(0.4)
                    ),
                    child: Image.asset("assets/images/scout bobber 1.webp",fit: BoxFit.cover,),
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth*0.9,
              height: 63,
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 136,
                    height: 63,
                    padding: const EdgeInsets.only(left: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xffBABABA))
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Max. Speed",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff8C7E7E)),),

                        Text("124 km/h",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff000000)),),
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckOut()));
                    },
                    child: Container(
                      width: screenWidth*0.533,
                      height: 63,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff000000)
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Rent",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffFFFFFF)),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1499/",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Risque',
                                    fontSize: 18,
                                    color: Color(0xffFFFFFF)),),

                              Text("per day",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17,
                                    color: Color(0xffFFFFFF)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            //Add Items
            Container(
              width: screenWidth*0.9,
              margin: const EdgeInsets.only(top: 36,bottom:25),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text("Add ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: Color(0xff000000)),),
                      Text("items",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 21,
                            color: Color(0xff000000)),),
                    ],
                  ),

                  Container(
                    width: screenWidth*0.9,
                    height: 50,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffBABABA))
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 35,
                          margin: EdgeInsets.only(left: screenWidth*0.032,right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xffBABABA))
                          ),
                          child: Image.asset("assets/images/Frame 41.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Riding Jacket",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("800/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 15,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Color(0xff000000)),),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          width: 70,
                          height: 22,
                          margin: EdgeInsets.only(left: screenWidth*0.25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xff000000),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("1",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xffFFFFFF)),),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: screenWidth*0.9,
                    height: 50,
                    margin: const EdgeInsets.only(top: 13),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffBABABA))
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 35,
                          margin: EdgeInsets.only(left: screenWidth*0.032,right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xffBABABA))
                          ),
                          child: Image.asset("assets/images/Frame 42.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Riding Gloves",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("800/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 15,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Color(0xff000000)),),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          width: 70,
                          height: 22,
                          margin: EdgeInsets.only(left: screenWidth*0.25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffBABABA),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("1",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xff000000)),),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: screenWidth*0.9,
                    height: 50,
                    margin: const EdgeInsets.only(top: 13),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffBABABA))
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 35,
                          margin: EdgeInsets.only(left: screenWidth*0.032,right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xffBABABA))
                          ),
                          child: Image.asset("assets/images/Frame 43.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Helmet",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("800/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 15,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Color(0xff000000)),),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          width: 70,
                          height: 22,
                          margin: EdgeInsets.only(left: screenWidth*0.25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xff000000),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("1",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xffFFFFFF)),),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}