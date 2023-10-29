import 'package:flutter/material.dart';
import 'package:srchout/bikeDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent Bike',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController search = TextEditingController();

  List<String> allCategories=[
    'Adventure',
    'Cruiser',
    'Sports Bike',
    'Street Bike',
    'Scrambler',
    'Super Bike',
  ];

  List<String> selectedCategory=[];


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
            //Profile
            Container(
              width: screenWidth,
              height: 50,
              margin: EdgeInsets.only(top: 60,left: screenWidth*0.096),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 14),
                    child: Image.asset("assets/images/profilePhoto.png",fit: BoxFit.fill,),
                  ),
                  
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff8C7E7E)),),

                      Text("Abhi Tiwari",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xff000000)),),
                    ],
                  )
                ],
              ),
            ),

            //Search
            Container(
              width: screenWidth*0.864,
              height: 60,
              margin: const EdgeInsets.only(top: 29),
              child: TextFormField(
                cursorColor: Colors.black,
                controller: search,
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),
                decoration: InputDecoration(
                  filled: true,
                    fillColor: const Color(0xffEFEEEE),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent)
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xffD2CFCF),
                    ),
                    hintText: "Search Bike",
                    hintStyle: const TextStyle(color: Color(0xffD2CFCF), fontSize: 20, fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.transparent) )),
              )
            ),

            //Categories
            Container(
              width: screenWidth*0.9,
              height: 51,
              margin: const EdgeInsets.only(top: 32),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allCategories.length,
                itemBuilder: (context, index){
                  final category = allCategories[index];
                  final isSelected = selectedCategory.contains(category);

                  return InkWell(
                    onTap: (){
                      setState((){
                        if(isSelected){
                          selectedCategory.remove(category);
                        }else{
                          selectedCategory.add(category);
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected?const Color(0xff000000):Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2,color: const Color(0xffBABABA))
                      ),
                      child: Text(allCategories[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: !isSelected?const Color(0xff000000):Colors.white),),
                    ),
                  );
                },

              ),
            ),

            //Popular Items
            Container(
              width: screenWidth*0.9,
              margin: const EdgeInsets.only(top: 38),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text("Popular ",
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
                    height: 235,
                    margin: const EdgeInsets.only(top: 18),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BikeDetails()));
                          },
                          child: Container(
                            width: 143,
                            margin: const EdgeInsets.only(right: 13),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffBABABA),width: 2),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 145,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 6),
                                  child: Image.asset("assets/images/meteor 1.png",fit: BoxFit.fill,),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Meteore",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("Royal Enfield",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Row(
                                    children: [
                                      Text("699/",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Risque',
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("per day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 17,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BikeDetails()));
                          },
                          child: Container(
                            width: 143,
                            margin: const EdgeInsets.only(right: 13),
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffBABABA),width: 2),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 145,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 6),
                                  child: Image.asset("assets/images/Indian-Scout-Bobber-2 1.png",fit: BoxFit.fill,),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Scout Bobber",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("Indian",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Row(
                                    children: [
                                      Text("1499/",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Risque',
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("per day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 17,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BikeDetails()));
                          },
                          child: Container(
                            width: 143,
                            margin: const EdgeInsets.only(right: 13),
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffBABABA),width: 2),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 145,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 6),
                                  child: Image.asset("assets/images/meteor 1.png",fit: BoxFit.fill,),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Meteore",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("Royal Enfield",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Row(
                                    children: [
                                      Text("699/",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Risque',
                                            fontSize: 18,
                                            color: Color(0xff000000)),),

                                      Text("per day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 17,
                                            color: Color(0xff000000)),),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),

            //Recently Viewed
            Container(
              width: screenWidth*0.9,
              margin: const EdgeInsets.only(top: 26,bottom: 25),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text("Recently ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: Color(0xff000000)),),
                      Text("viewed",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 21,
                            color: Color(0xff000000)),),
                    ],
                  ),

                  Container(
                    width: screenWidth*0.9,
                    height: 52,
                    margin: const EdgeInsets.only(top: 18),
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
                          child: Image.asset("assets/images/Frame 4.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hayabusa",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("2000/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 17,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17,
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
                          child: const Text("Available",
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
                    height: 52,
                    margin: const EdgeInsets.only(top: 18),
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
                          child: Image.asset("assets/images/Frame 6.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Classic 350",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("1500/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 17,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17,
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
                              color: const Color(0xffBFC5BF),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("Booked",
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
                    height: 52,
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
                          child: Image.asset("assets/images/images.png",fit: BoxFit.fill,),
                        ),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ninja ZX10r",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xff000000)),),

                            Row(
                              children: [
                                Text("2500/",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Risque',
                                      fontSize: 17,
                                      color: Color(0xff000000)),),

                                Text("per day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17,
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
                          child: const Text("Available",
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
