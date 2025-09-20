import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/screen/themes/app_colors.dart';

class FootItem extends StatelessWidget {
  const FootItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(10),
      margin:  EdgeInsets.only(bottom: 10),
      height: 182,
      width: 152,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0.1, 0.5),
            color: Colors.grey.withValues(alpha: 0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite_border, color: Colors.grey,
              size: 20,
            ),
          ),

          Expanded(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage(
                "assets/images/imgbin-basket-of-fruit-cartoon-fruits-basket-still-life-illustration-zT8c0qVNxL2hbA3BBdz73AmJr-removebg-preview (1) 1.png",
              ),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            "Honey lime combo",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryColor,
            ),
          ),

           SizedBox(height: 4),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$20.00",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              Icon(
                Icons.add_circle,
                color: AppColors.primaryColor,
                size: 26,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
