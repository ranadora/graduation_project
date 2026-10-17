import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/home_content.dart';
import 'package:graduation_project/widgets/security_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int selectedIndex = 2;
  bool isConnected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF5F6F6),

      body: SafeArea(
        bottom: false,
        child: IndexedStack(
          index: selectedIndex,
          children: [

            const PlaceholderPage(title: 'Accounts'),

            SecurityContent(),

            HomeContent(
              isConnected: isConnected,
              onConnectionChanged: (value) {
                setState(() {
                  isConnected = value;
                });
              },
            ),
            
            const PlaceholderPage(title: 'Activity'),

            const PlaceholderPage(title: 'Settings'),
          ],
        ),
      ),

    
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          height: 85,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F6F6),
            border: Border(
              top: BorderSide(
                color: Color(0xFFE0E0E0),
              ),
            ),
          ),

          child: Row(
            children: [

              buildNavItem(
                icon: Icons.person_outline,
                title: 'Accounts',
                index: 0,
              ),

              buildNavItem(
                icon: Icons.shield_outlined,
                title: 'Security',
                index: 1,
              ),

              buildNavItem(
                icon: Icons.home_filled,
                title: 'Home',
                index: 2,
              ),

              buildNavItem(
                icon: Icons.monitor_heart_outlined,
                title: 'Activity',
                index: 3,
              ),

              buildNavItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildNavItem({
    required IconData icon,
    required String title,
    required int index,
  }) {

    bool isSelected = selectedIndex == index;

    return Expanded(
      child: InkWell(

        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              size: 30,
              color: isSelected
                  ? const Color(0xFF08477B)
                  : Colors.grey,
            ),

            const SizedBox(height: 5),

            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: isSelected
                    ? const Color(0xFF08477B)
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class PlaceholderPage extends StatelessWidget {

  final String title;

  const PlaceholderPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        title,

        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

//هنا ويدجت مختصره للاكتفيتي
Widget buildActivityItem ({ 
  required IconData icon,
  required String title,
  required String subtitle,
  required String time,
  required Color iconColor,
  required Color backgroundColor
}){ return Row(crossAxisAlignment: CrossAxisAlignment.start ,children: [
  Container(width: 44,height: 44,decoration: BoxDecoration(color: backgroundColor,borderRadius: BorderRadius.circular(12))
  ,child: Icon(icon,size: 25,color: iconColor,),),const SizedBox(width: 12,),
  Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
    Text(title,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xFF18243D)),),const SizedBox(height: 4,),
    Text(subtitle,style: TextStyle(fontSize: 11,color: Color(0xFF858B94)),),
  ],)),const SizedBox(width: 6,),
  Text(time,style: TextStyle(fontSize: 10,color: Color(0xFF858B94)),)
 ],);

}

// ويدجت خاصه بالاكشنز
Widget buildActionsItem({
  required String title,
  required String subtitle,
  required IconData iconn,

}){ return Row(children: [ Container(width: 44,height: 44,decoration: BoxDecoration(color: Color(0xFFE8F1FA))
,child: Icon(iconn,color:  Color(0xFF28669A),size: 25,)),SizedBox(width: 12,),
  Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
    Text(title,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xFF18243D)),),const SizedBox(height: 4,),
    Text(subtitle,style: TextStyle(fontSize: 11,color: Color(0xFF858B94)),),
  ],)),const SizedBox(width: 6,), IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right),color: Color(0xFF07518A),iconSize: 24,)

],);

}


