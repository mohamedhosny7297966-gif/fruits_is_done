import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/home/widget/foot_item.dart';
import 'package:fruits_app/screen/themes/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Icon(Icons.menu, size: 28),
                Column(
                  children: [
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: AppColors.primaryColor,
                      size: 34,
                    ),
                    Text(
                      "My basket",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
             SizedBox(height: 24),
            Text(
              "Hello Tony, What fruit salad \n combo do you want today?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                      hintText: "Search for fruit salad combos",
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.tune, color: Colors.indigo, size: 26),
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text("Recommended Combo",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryColor,
            ),),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FootItem(),
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: 5,
              ),
            ),
            SizedBox(height: 20,),
            Text("Hottest",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryColor,
            ),),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FootItem(),
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: 5,
              ),
            ),



          ],
        ),),
      ),
    );
  }
}
