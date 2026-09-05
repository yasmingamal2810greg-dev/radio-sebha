import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/hadeth/hadeth_tabs.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran_tabs.dart';
import 'package:islami/ui/screens/home/tabs/radio/radio_tabs.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha_screen.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha_tabs.dart';
import 'package:islami/ui/screens/home/tabs/time/time_tabs.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;
  List<String> backgroundImages = [
    AppAssets.background,
    AppAssets.hadith,
    AppAssets.sebha,
    AppAssets.radio,
    AppAssets.time,
  ];
  List<Widget> tabsList = [
    QuranTabs(), HadethTabs(), SebhaScreen(), RadioTabs(), TimeTabs()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.PraimaryColor
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index;
            setState(() {

            });
          },
          selectedItemColor: AppColors.WhiteColor,
          unselectedItemColor: AppColors.blackColor,
          // showUnselectedLabels: true,
          items: [
            _buildBottomNavBarItem(iconName: AppAssets.ic_quran, label: 'Quran' ,index: 0),
            _buildBottomNavBarItem(iconName: AppAssets.hadith, label: 'Hadith' ,index: 1),
            _buildBottomNavBarItem(iconName: AppAssets.ic_sebha, label: 'Sebha' ,index: 2),
            _buildBottomNavBarItem(iconName: AppAssets.ic_radio, label: 'Radio' ,index: 3),
            _buildBottomNavBarItem(iconName: AppAssets.ic_time, label: 'Time' ,index: 4),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(backgroundImages[selectedIndex],
            height: double.infinity ,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Column(
              spacing: MediaQuery.of(context).size.height*0.01,
              children: [
                Image.asset(AppAssets.logo),
                Expanded(child: tabsList[selectedIndex]),
              ],
            ),
          ),
        ],
      ),
    );
  }

   BottomNavigationBarItem _buildBottomNavBarItem({
     required String iconName, required String label, required int index,
}) {
    return BottomNavigationBarItem(
      icon: selectedIndex == index ?
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.blackBgColor,
        ),
          child: ImageIcon(AssetImage(iconName))):
        ImageIcon(AssetImage(iconName)),
      label: label,
    );
   }
}