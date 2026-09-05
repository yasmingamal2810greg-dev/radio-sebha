import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';
import 'package:islami/utils/size_utils.dart';

class QuranTabs extends StatelessWidget {
  const QuranTabs({super.key});

  @override
  Widget build(BuildContext context) {
    var  width = context.width;
    var  height = context.height;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.04),
      child: Column(
        children: [
          TextField(
            cursorColor: AppColors.PraimaryColor,
            decoration: InputDecoration(
              enabledBorder: _buildDecorationBorder(),
                focusedBorder: _buildDecorationBorder(),
              prefixIcon: Image.asset(AppAssets.sura_ic),
              hintText: 'Sura Name',
              hintStyle: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
  OutlineInputBorder _buildDecorationBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.PraimaryColor,
        width: 2,
      ),
    );
  }
}