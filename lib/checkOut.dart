import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget{
  CheckOut({super.key});

  final TextEditingController applyCoupon = TextEditingController();

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
      body: SizedBox(
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //BackButton
              Container(
                width: screenWidth*0.9,
                margin: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context) => CheckOut()));
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
                      child: const Text("Check Out",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color(0xff000000)),),
                    )
                  ],
                ),
              ),

              //Date
              Container(
                width: screenWidth*0.88,
                height: 183,
                margin: const EdgeInsets.only(top: 32),
                decoration: BoxDecoration(
                  color: const Color(0xffC4C4C4),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xffBABABA))
                ),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth*0.789,
                      height: 70,
                      margin: const EdgeInsets.only(top: 17),
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xffBABABA))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenWidth*0.466,
                            height: 58,
                            child: const Column(
                              children: [
                                Text("Start Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xff8C7E7E)),),

                                Text("09-06-2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xff000000)),),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: 32,
                            height: 30,
                            child: Image.asset("assets/images/2012.png",fit: BoxFit.fill,),
                          )
                        ],
                      ),
                    ),

                    Container(
                      width: screenWidth*0.789,
                      height: 70,
                      margin: const EdgeInsets.only(top: 9),
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xffBABABA))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenWidth*0.466,
                            height: 58,
                            child: const Column(
                              children: [
                                Text("End Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xff8C7E7E)),),

                                Text("12-06-2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xff000000)),),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: 32,
                            height: 30,
                            child: Image.asset("assets/images/2012.png",fit: BoxFit.fill,),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Apply Coupon
              Container(
                  width: screenWidth*0.877,
                  height: 38,
                  margin: const EdgeInsets.only(top: 38),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: applyCoupon,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 11),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xffBABABA))
                        ),
                        hintText: "Apply coupon",
                        hintStyle: const TextStyle(color: Color(0xff8C7E7E), fontSize: 20, fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.transparent) )),
                  )
              ),

              //Bill
              Container(
                width: screenWidth*0.88,
                margin: const EdgeInsets.only(top: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Details",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff000000)),),

                    Container(
                      width: screenWidth*0.88,
                      height: 1,
                      margin: const EdgeInsets.only(top: 4,bottom: 6),
                      color: const Color(0xffBABABA),
                    ),

                    SizedBox(
                      width: screenWidth*0.88,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Days ",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                          Text("4",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: screenWidth*0.88,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rent",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                          Text("₹ 5996",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: screenWidth*0.88,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Additional items",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                          Text("₹ 6400",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: screenWidth*0.88,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Coupon Discount",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                          Text("₹  396",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                        ],
                      ),
                    ),

                    Container(
                      width: screenWidth*0.88,
                      height: 1,
                      margin: const EdgeInsets.only(top: 13,bottom: 10),
                      color: const Color(0xffBABABA),
                    ),

                    SizedBox(
                      width: screenWidth*0.88,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                          Text("₹  12000",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xff000000)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //PayButton
              Container(
                width: screenWidth*0.88,
                height: 64,
                margin: const EdgeInsets.only(top: 71,bottom:25),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff000000),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Text("PAY",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffFFFFFF)),),
              )
            ],
          ),
        ),
      ),
    );
  }

}