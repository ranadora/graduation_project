import 'package:flutter/material.dart';

class ActivityContent extends StatefulWidget {
  const ActivityContent({super.key});

  @override
  State<ActivityContent> createState() => _ActeivityContentState();
}

class _ActeivityContentState extends State<ActivityContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(padding: EdgeInsets.all(16),child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start, children: [ 
        Row(crossAxisAlignment: CrossAxisAlignment.start,children: [ 
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text('Activity',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF10152F) ),),SizedBox(height: 4,),
          Text('A private audit trail of device,authentication and account events.',style: TextStyle(fontSize: 16,color: Colors.grey),)],))
       ,Container(width: 45,height: 45,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
       boxShadow: [BoxShadow(color: Colors.black45)]
       ),
       child: IconButton(onPressed: (){}, icon: Icon(Icons.cloud_off,)),) ], ),
       SizedBox(height: 20,),

          Container(width: double.infinity,padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
decoration: BoxDecoration(color: Colors.white ,boxShadow: [BoxShadow(color: Colors.black45)],
borderRadius: BorderRadius.circular(15)),

child: Row(crossAxisAlignment: CrossAxisAlignment.start ,children: [ 
                       
  Icon(Icons.remove_red_eye_outlined,size: 30 ,color: Colors.grey,), Column(children: [Text('Secrets are never included in audit logs', style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),),
  SizedBox(height: 4,), Text('Password,PINs,TOTP secrets and encryption keys are excluded',
  style: TextStyle(fontSize: 16,color: Colors.grey))

  ],)
],),

),SizedBox(height: 7,),
       
       
       
       
       ]));
  }
}