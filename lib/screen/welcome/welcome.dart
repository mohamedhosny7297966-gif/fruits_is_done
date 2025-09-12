

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/images/imgbin-basket-of-fruit-cartoon-fruits-basket-still-life-illustration-zT8c0qVNxL2hbA3BBdz73AmJr-removebg-preview (1) 1.png"),
            decoration: BoxDecoration(
                color: Color(0xffFFA451),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),

            height: 469,


          ),
          SizedBox(height: 35,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text("Get the Freshest Fruit Salad Combo",
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff27214D)
                  ) ,),
                Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                  style:TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5D577E)
                  ) ,),
                SizedBox(height: 58,),
                ElevatedButton(onPressed: (){},
                  child: Text("Let’s Continue",style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,

                  ),),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFA451),
                  minimumSize: Size(double.infinity, 56),
                ),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
