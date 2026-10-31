import 'package:flutter/material.dart';
import 'package:graduation_project/loginScreens/VerifyEmailScreen.dart';
import 'package:graduation_project/loginScreens/loginScreen.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey <FormState> formstate=GlobalKey();
  TextEditingController username=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmpassword=TextEditingController();
  bool isPasswordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002855),
      body: SafeArea(
        child: Center(
          child:Form(key: formstate,child:  SingleChildScrollView(
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
                      const Text(
                        'Create your CORTEX account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Use your email to manage device metadata and security settings. Your stored credentials remain on your device.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Full name',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: 'e.g. Rana Dora',
                          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFF002855)),
                          ),
                        ), validator: (value) {
                          if(value!.isEmpty){return "field is empty";}
                         
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Email address',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'user@example.com',
                          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFF002855)),
                          ),
                        ), validator: (value) {
                          if(value!.isEmpty){return "field is empty";}
                      
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(controller: password,
                        obscureText: !isPasswordVisible,
                        decoration: InputDecoration(
                          hintText: 'At least 8 characters',
                          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isPasswordVisible=!isPasswordVisible;
                            });
                          }, icon:Icon(isPasswordVisible 
                          ? Icons.visibility
                          :Icons.visibility_off)),

                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFF002855)),
                          ),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){return "field is empty";}
                         else if(value!.length<8){return"should be at least 8 characters";}
                         return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Confirm password',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1931),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(controller: confirmpassword,
                        obscureText: !isPasswordVisible,
                        decoration: InputDecoration(
                          hintText: 'Enter your password again',
                          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              isPasswordVisible=!isPasswordVisible;
                            });
                          }, icon:Icon(isPasswordVisible 
                          ? Icons.visibility
                          :Icons.visibility_off)),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFF002855)),
                          ),
                        ), validator: (value) {
                          if(value!.isEmpty){return "field is empty";}
                          else if(value!.length<8){ return"should be at least 8 characters";}
                         else if(value !=password.text){return"passwords do not match";}
                        
                         return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            
                            if(formstate.currentState!.validate()){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerifyEmailScreen()));
                            }
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF002855),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            GestureDetector(
                              onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                              },
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  color: Color(0xFF0A1931),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),)
        ),
      ),
    );
  }
}