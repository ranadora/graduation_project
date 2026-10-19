import 'package:flutter/material.dart';

class SettingsContent extends StatefulWidget {
  const SettingsContent({super.key});

  @override
  State<SettingsContent> createState() => _SettingsContentState();
}

class _SettingsContentState extends State<SettingsContent> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(padding: EdgeInsets.all(16),child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start, children: [ 
            Text('Settings',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF10152F) ),),SizedBox(height: 4,),
          Text('Manage device protection,privacy,backups and app preferences.',style: TextStyle(fontSize: 16,color: Colors.grey),),
          
          ],));
      
       
  }
}