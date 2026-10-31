import 'package:flutter/material.dart';
import 'package:graduation_project/loginScreens/ConnectDeviceScreen.dart';

class DeviceChoiceScreen extends StatelessWidget {
  const DeviceChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002855),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // زر الرجوع للصفحة السابقة
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 10),
                      
                      // عنوان CORTEX
                      const Center(
                        child: Text(
                          'CORTEX',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Color(0xFF0A1931),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      
                      // العنوان الرئيسي
                      const Center(
                        child: Text(
                          'Do you have a CORTEX\ndevice?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0A1931),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      
                      // الوصف التوضيحي
                      const Center(
                        child: Text(
                          'Your account works independently. Connect a device now to unlock hardware-protected credential features.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // خيار: I Have a Device
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConnectDeviceScreen()));
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.usb_outlined,
                                  color: Color(0xFF002855),
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'I Have a Device',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0A1931),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Continue to connection setup',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // خيار: I Don't Have a Device Yet
                      InkWell(
                        onTap: () {
                          // TODO: ضع هنا الشاشة التالية في حال عدم وجود جهاز
                          // مثال:
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.access_time_outlined,
                                  color: Color(0xFF002855),
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I Don't Have a Device Yet",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0A1931),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Continue now and connect one later',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // ملاحظة التشفير السفلي داخل الصندوق
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.lock_outline, color: Colors.grey, size: 14),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Password storage, TOTP secrets, and USB credential injection require a connected CORTEX device.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // النص السفلي خارج الصندوق
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, color: Colors.white70, size: 14),
                    SizedBox(width: 6),
                    Text(
                      'Sensitive credentials stay encrypted on your CORTEX device',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}