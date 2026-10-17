import 'package:flutter/material.dart';

class SecurityContent extends StatelessWidget {
  const SecurityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(padding: EdgeInsets.all(16),child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start, children: [ 
        Row(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text('Security Center',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF10152F) ),),
          Text('Understand your security posture and take the highest-impact actions first.',style: TextStyle(fontSize: 16,color: Colors.grey),)],))
       ,Container(width: 45,height: 45,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
       boxShadow: [BoxShadow(color: Colors.black45)]
       ),
       child: IconButton(onPressed: (){}, icon: Icon(Icons.refresh,)),) ], ),
      buildSecurityCenter(),
      Text('Recommended actions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF10152F) ),),SizedBox(height: 4,),
      Text('Start with the issues that carry the most risk.',style: TextStyle(color: Colors.grey),)
      ,SizedBox(height: 6,),
buildActions(icon: Icons.warning_amber_rounded, title: 'HIGH PRIORITY', secondTitle: 'Review a known breach',
 subtitle: 'your email address associated with netflix appeared in a breach.Exposed data may include email and username',
  secondIcon: Icons.arrow_forward,
  iconColor: Color(0xFFE05252), label: 'Review affected account', backgroundcolor:Colors.red.shade50 ),
Divider(height: 10,color:Color(0xFFF0F2F5) ,),
buildActions(icon: Icons.key, title: 'RECOMMENDED',
 secondTitle: 'Replace two weak passwords', subtitle: 'Create unique passwords on SecureVault for Netflix and a saved archive account',
  secondIcon: Icons.arrow_forward, iconColor:Color(0xFFB88722) , label: 'Review weak passwords', 
  backgroundcolor:Color(0xFFFFF3D8)),
  Divider(height: 10,color: Color(0xFFF0F2F5),),
buildActions(icon: Icons.content_copy, title:'RECOMMENDED',
 secondTitle: 'Resolve password reuse', subtitle:'The same password pattern was detected across two accounts.The passwords are never shown here', 
 secondIcon: Icons.arrow_forward, iconColor:Color(0xFFB88722),
  label: 'Review affected accounts', backgroundcolor:Color(0xFFFFF3D8))






      ],
    ),);
  }
}



//widgetCustom

Widget buildSecurityCenter(){ return Container(width: double.infinity,
  padding: EdgeInsets.all(16),margin: EdgeInsets.all(16),decoration: BoxDecoration( 
    color: Colors.white,borderRadius: BorderRadius.circular(15),boxShadow: [BoxShadow(color: Colors.black45)])
  ,child: Column( crossAxisAlignment: CrossAxisAlignment.center,
  children: [ Stack(
                        alignment: Alignment.center,

                        children: [

                          const SizedBox(
                            width: 100,
                            height: 100,

                            child: CircularProgressIndicator(
                              value: 0.82,
                              strokeWidth: 7,
                              backgroundColor: Color(0xFFE6F0FA),
                              valueColor: AlwaysStoppedAnimation(
                                Color(0xFF08477B),
                              ),
                            ),
                          ),

                          const Text(
                            '82%',

                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF10152F),
                            ),
                          ),
                        ],
                      ),
SizedBox(height: 6,),
Text('OVER ALL SECURITY SCORE', style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF08477B),
                        fontWeight: FontWeight.w600,
                      ),)
,SizedBox(height: 5,),
Text('Your protection is good',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF10152F) ),),
SizedBox(height: 6,),
Text('Your SecureVault device is protected .Three account-level issues can still be improved.',style: TextStyle(fontSize: 16,color: Colors.grey),),
Container(width: double.infinity,padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
decoration: BoxDecoration(color: Color(0xFFE6F0FA) ,boxShadow: [BoxShadow(color: Colors.black45)],
borderRadius: BorderRadius.circular(15)),

child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [ 
                       
  Icon(Icons.auto_awesome,size: 25,color:Color(0xFF08477B) ,), Column(children: [Text('Reach 94 by resolving open issues', style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF08477B),
                        fontWeight: FontWeight.w600,
                      ),),
  SizedBox(height: 3,), Text('your score helps prioritize actions; it does not guarantee security.',
  style: TextStyle(fontSize: 16,color: Colors.grey))

  ],)
],),

)


   ],),
 );

}





//widget shortcut
Widget buildActions({
  required IconData icon,
  required String title,
  required String secondTitle,
  required String subtitle,
  required IconData secondIcon,
  required Color iconColor,
  required String label,
required Color backgroundcolor
}){
  return Container( padding: EdgeInsets.all(16), width: double.infinity,
decoration: BoxDecoration( 
 color: Colors.white,borderRadius: BorderRadius.circular(15),boxShadow: [BoxShadow(color: Colors.black45)]),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
  Text(title,style: TextStyle(color: Colors.grey),),SizedBox(height: 6,),
  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [ 
  Container(width: 44,height: 44,decoration: BoxDecoration(color: backgroundcolor,borderRadius: BorderRadius.circular(12))
,child: Icon(icon,color: iconColor,size: 25,),),SizedBox(width: 8,),
Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
Text(secondTitle,style: TextStyle(color:  Color(0xFF18243D),fontSize: 13,fontWeight: FontWeight.bold),),SizedBox(height: 4,),
Text(subtitle,style: TextStyle(fontSize: 11,color:Color(0xFF858B94) ),),SizedBox(height: 5,),
 TextButton.icon(

                    onPressed: () {},

                      icon:  Icon(
                       secondIcon,
                        color: Color(0xFF07518A) ,
                      ),

                      label: Text(
                       label ,
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: Color(0xFF07518A) ,
                        ),
                      ),
                    ),

],))

  ],)
],),



  );
}




