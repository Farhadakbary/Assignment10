import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Instagram Login',
      home: Instagram_Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Instagram_Login extends StatefulWidget {
  const Instagram_Login({super.key});

  @override
  State<Instagram_Login> createState() => _Instagram_LoginState();
}
class _Instagram_LoginState extends State<Instagram_Login> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
           //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Image.network(
                'https://th.bing.com/th/id/R.825e4d7b40faa8f9c51da0c73d6254d8?rik=RVfV80ATb%2boUhg&pid=ImgRaw&r=0',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'User name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        print('Icon tapped');
                      }, icon: const Icon(Icons.visibility_off)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 25),
           const Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(
                      color: Colors.blue),
                ),
              ],
           ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(  onPressed: () {
              print('Log in tapped');
            },
              child: Text('Log in',style: TextStyle(fontSize: 15),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue.shade600,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  child: Text('Or'),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {
                print('Facebook Icon tapped');
              },
              icon:const Icon(Icons.facebook,color: Colors.blue,),label: const Text('Log in with facebook'),

              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
            ),
            ),
            const Spacer(),
           // const Divider(),
            const SizedBox(height: 10),
            GestureDetector(onTap: (){
              print("Don't have an account? tapped");
            },
            child: const Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
              Text("Sign up",style: TextStyle(color: Colors.blue),),
              SizedBox(height: 20,)
            ],),)
          ],
        ),
      ),
    );
  }
}
