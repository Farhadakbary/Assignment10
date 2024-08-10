import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Facebook Login',
      home: Facebook_Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Facebook_Login extends StatefulWidget {
  const Facebook_Login({super.key});

  @override
  State<Facebook_Login> createState() => _Facebook_LoginState();
}

class _Facebook_LoginState extends State<Facebook_Login> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Image.network(
                'https://th.bing.com/th/id/OIP.aOsy9_8WH3PFvhQ9JLlQmAHaE8?pid=ImgDet&w=474&h=316&rs=1',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Or Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                onPressed: () {},
                child: Text('Log in')),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                print('forgot password clicked');
              },
              child: Text(
                'Forgot password',
                style: TextStyle(
                    color: Colors.blue.shade600, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                print('back clicked');
              },
              child: Text(
                'Back',
                style: TextStyle(
                    color: Colors.blue.shade600, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  child: Text('Or'),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Expanded(child: Divider()),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                print('Create a new Account clicked');
              },
              child: Text(
                'Create a new Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue.shade600),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: Size(double.infinity, 50.0),
                  backgroundColor: Color(0xFFCBE5FF),
                  foregroundColor: Colors.blue.shade50),
            )
          ],
        ),
      ),
    );
  }
}
