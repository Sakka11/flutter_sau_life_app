import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 45,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              children: [
                //ส่วนปุ่มไอคอนย้อนกลับ
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                  ),
                ),
                //ส่วนรูปภาพ logo
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                //ส่วนข้อความ Get on Board!, Create....
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Get on Board!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create your profile start your journey.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //ส่วนป้อนชื่อ
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(13),
                  ),
                ),
                //ส่วนป้อนอีเมล
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'E-mail',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(13),
                  ),
                ),
                //ส่วนป้อนเบอร์โทรศัพท์
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.hashtag,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Phone No',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(13),
                  ),
                ),
                //ส่วนป้อนอีเมล
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.fingerprint,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(13),
                  ),
                ),

                //ส่วนปุ่ม Signup
                SizedBox(height: 22),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color.fromARGB(255, 244, 6, 6),
                  ),
                ),
                //ส่วนข้อความ OR
                SizedBox(height: 5),
                Text(
                  'OR',
                ),
                //ส่วนปุ่ม Google
                SizedBox(height: 5),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                //ส่วนข้อความ Don't ... กับปุ่ม Sign Up
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
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
