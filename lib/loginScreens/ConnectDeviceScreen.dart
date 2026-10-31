import 'package:flutter/material.dart';

class ConnectDeviceScreen extends StatefulWidget {
  const ConnectDeviceScreen({Key? key}) : super(key: key);

  @override
  State<ConnectDeviceScreen> createState() => _ConnectDeviceScreenState();
}

class _ConnectDeviceScreenState extends State<ConnectDeviceScreen> {
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final TextEditingController keyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002855),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Form(
              key: formstate,
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
                            'Connect Your Device',
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
                            'Connect and unlock your CORTEX, then enter the 64-character connection key shown in the device setup menu.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // الخطوات التوضيحية
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text('1', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0A1931))),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Connect the device by USB and unlock it.',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text('2', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0A1931))),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'On the device, open Settings -> Connection Key.',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // حقل مفتاح الاتصال
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Device connection key',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A1931),
                              ),
                            ),
                            Text(
                              '0/64',
                              style: TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: keyController,
                          decoration: InputDecoration(
                            hintText: 'Enter the 64-character key',
                            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                            suffixText: 'Paste',
                            suffixStyle: const TextStyle(color: Color(0xFF002855), fontWeight: FontWeight.bold, fontSize: 13),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFF002855)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Connection key is empty';
                            } else if (value.length < 64) {
                              return 'Key must be 64 characters';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Letters and numbers only',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        const SizedBox(height: 12),

                        // ملاحظة الأمان الصغيرة
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.lock_outline, color: Colors.grey, size: 13),
                            SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                'The key is used only for the setup demonstration and is never logged. It is not your account password.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // زر Connect Device
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formstate.currentState!.validate()) {
                                // ضع هنا كود الانتقال للشاشة التالية بعد الاتصال الناجح
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF002855),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Connect Device',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // زر I'll Do This Later
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // ضع هنا كود التخطي والانتقال للرئيسية
                            },
                            child: const Text(
                              "I'll Do This Later",
                              style: TextStyle(
                                color: Color(0xFF0A1931),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // النص السفلي للتشفير خارج الصندوق
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
      ),
    );
  }
}