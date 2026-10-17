import 'package:flutter/material.dart';
import 'package:graduation_project/home_screen.dart';

class HomeContent extends StatelessWidget {

  final bool isConnected;
  final ValueChanged<bool> onConnectionChanged;

  const HomeContent({
    super.key,
    required this.isConnected,
    required this.onConnectionChanged,
  });

  @override
  Widget build(BuildContext context) {

DateTime today = DateTime.now();
DateTime lastScan =DateTime.now();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [


          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

               Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      '${today.day}/${today.month}/${today.year}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF08477B),
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      'Good morning, Hadeel',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF10152F),
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      'Here’s the current state of your security.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

             
              SizedBox(
                width: 65,
                height: 65,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF08477B),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),

                  child: const Icon(
                    Icons.add,
                    size: 38,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

        

          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(22),

            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF084B80),
                  Color(0xFF062354),
                ],
              ),

              borderRadius: BorderRadius.circular(30),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

               
                Row(
                  children: [

                    const Icon(
                      Icons.circle,
                      color: Color(0xFF62D8B1),
                      size: 20,
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Text(
                        isConnected
                            ? 'Connected & unlocked'
                            : 'Disconnected',

                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const Icon(
                      Icons.battery_5_bar,
                      color: Colors.white,
                      size: 25,
                    ),

                    const SizedBox(width: 5),

                    const Text(
                      '82%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

              
                Text(
                  isConnected
                      ? 'Your vault is ready'
                      : 'Your vault is locked',

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Secrets remain encrypted on your device. '
                  'Ready for secure USB credential injection.',

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 25),

               
                Wrap(
                  spacing: 10,
                  runSpacing: 10,

                  crossAxisAlignment: WrapCrossAlignment.center,

                  children: [

                    ElevatedButton.icon(

                      onPressed: () {
                        onConnectionChanged(!isConnected);
                      },

                      icon: Icon(
                        isConnected
                            ? Icons.lock_outline
                            : Icons.lock_open,
                      ),

                      label: Text(
                        isConnected ? 'Disconnect' : 'Connect',
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF10152F),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 15,
                        ),
                      ),
                    ),

                    TextButton.icon(

                      onPressed: () {},

                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),

                      label: const Text(
                        'Device details',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

         

          const Text(
            'Security overview',

            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF10152F),
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Clear actions, prioritized by impact.',

            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 30),

         

          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(22),

            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(
                color: const Color(0xFFD9DCDF),
              ),

              borderRadius: BorderRadius.circular(30),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

               
                Row(
                  children: [

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'SECURITY SCORE',

                            style: TextStyle(
                              color:  Color(0xFF10152F),
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(height: 15),

                          Text(
                            'Good protection',

                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF10152F),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 100,
                      height: 100,

                      child: Stack(
                        alignment: Alignment.center,

                        children: [

                          const SizedBox(
                            width: 100,
                            height: 100,

                            child: CircularProgressIndicator(
                              value: 0.82,
                              strokeWidth: 7,
                              backgroundColor: Color(0xFFE7EFF8),
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
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                const Text(
                  'Your core device protections are active. '
                  'Resolve three account issues to improve your score.',

                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 15),

                const Divider(),

                const SizedBox(height: 10),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Text(
                      'Last scan',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),

                    Text(
                      'Today, ${lastScan.hour}:${lastScan.minute.toString().padLeft(2,'0')}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF10152F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

         
          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(
                color: const Color(0xFFD9DCDF),
              ),

              borderRadius: BorderRadius.circular(30),
            ),

            child: Row(
              children: [

             
                Container(
                  width: 70,
                  height: 70,

                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4D5),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: const Icon(
                    Icons.key_outlined,
                    size: 38,
                    color: Color(0xFF98691C),
                  ),
                ),

                const SizedBox(width: 18),

                // النص
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        'PASSWORD HEALTH',

                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        '3 issues need attention',

                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF10152F),
                        ),
                      ),
                    ],
                  ),
                ),
                  TextButton.icon(

                    onPressed: () {},

                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF10152F) ,
                      ),

                      label: const Text(
                        'Review issues',
                        style: TextStyle(
                          color: Color(0xFF10152F) ,
                        ),
                      ),
                    ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(
                color: const Color(0xFFD9DCDF),
              ),

              borderRadius: BorderRadius.circular(30),
            ),

            child: Row(
              children: [

                
                Container(
                  width: 70,
                  height: 70,

                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4D5),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: const Icon(
                    Icons.warning,
                    size:38,
                    color: Color.fromARGB(255, 207, 151, 147),
                  ),
                ),

                const SizedBox(width: 18),

        
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        'BREACH MONITORING',

                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        '1 account needs review',

                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF10152F),
                        ),
                      ),

                    ],
                  ),
              
                ),
                
                    TextButton.icon(

                    onPressed: () {},

                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF10152F) ,
                      ),

                      label: const Text(
                        'View alert',
                        style: TextStyle(
                          color: Color(0xFF10152F) ,
                        ),
                      ),
                    ),
              ],
            ),
          ),
Container(width: double.infinity, padding: EdgeInsets.all(12),margin: EdgeInsets.all(16),decoration: BoxDecoration( color: Colors.white,
  border: Border.all(color: Color(0xFFD9DCDF)),
  borderRadius: BorderRadius.circular(20),
  ),
child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [ 
 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ 
  Text("Recent activity",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF18243D)),),
  TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(color: Color(0xFF07518A),fontWeight: FontWeight.w600),))
 ],),
 Text('Security events from your device',style: TextStyle(fontSize: 12,color: Color(0xFF858B94)),),SizedBox(height: 12,),

 buildActivityItem(icon: Icons.desktop_windows_outlined,
  title: 'GitHub credentials used' , subtitle: 'credential injection via USB HID', 
  time: ' ${lastScan.hour}:${lastScan.minute.toString().padLeft(2,'0')}', iconColor:Color(0xFF28669A), 
 backgroundColor: Color(0xFFE8F1FA)),

Divider(height: 20,color: Color(0xFFF0F2F5),),
 buildActivityItem(icon: Icons.auto_fix_high,
  title: 'Password generated' , subtitle: '20_character password saved to SecureVault', 
  time: ' ${lastScan.hour}:${lastScan.minute.toString().padLeft(2,'0')}', iconColor:Color(0xFF28669A), 
 backgroundColor: Color(0xFFE8F1FA)),

Divider(height: 20,color: Color(0xFFF0F2F5),),
 buildActivityItem(icon: Icons.warning_amber_rounded,
  title: 'Authentication failed' , subtitle: 'FingerPrint not recognized', 
  time: ' ${lastScan.hour}:${lastScan.minute.toString().padLeft(2,'0')}', iconColor:Color(0xFFB88722), 
 backgroundColor: Color(0xFFFFF3D8)), 

],

),
),SizedBox(height: 20,),

Container(width: double.infinity, padding: EdgeInsets.all(12),margin: EdgeInsets.all(16),decoration: BoxDecoration( color: Colors.white,
  border: Border.all(color: Color(0xFFD9DCDF)),
  borderRadius: BorderRadius.circular(20),
  ),
child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [ Text('Quick actions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF18243D))
), SizedBox(height: 5,),
Text('Commonn secure operations',style: TextStyle(fontSize: 12,color: Color(0xFF858B94))),SizedBox(height: 12,),
buildActionsItem(title: 'Generate password', subtitle: 'Create on your device',
 iconn: Icons.auto_fix_high, ),
Divider(height: 20,color: Color(0xFFF0F2F5),),
buildActionsItem(title: 'View TOTP codes', subtitle: '3 accounts configured',
 iconn: Icons.timer_outlined, ),
Divider(height: 20,color: Color(0xFFF0F2F5),),

buildActionsItem(title: 'Encrypted backup', subtitle: 'Last backup 8 days ago',
iconn: Icons.storage_outlined, ),



])),


        ],
      ),
    );
  }
}