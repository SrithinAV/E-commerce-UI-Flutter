import 'package:flutter/material.dart';
import 'package:e_commerce_ui_flutter/screens/home/home_screen.dart';

class RoundedPhoto extends StatelessWidget {
  const RoundedPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.00),
      width: 130.0, // Adjust the width of the circular container
      height: 130.0, // Adjust the height of the circular container
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black54, // Change the background color of the circle
      ),
      child: ClipOval(

          child: Image.asset(
            "/Users/srithin/projects/practice/assets/person.jpg",
            width: 180.00,
            height: 180.00,
            fit: BoxFit.cover,
          )),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<dynamic> _login() {
    //use this function at onpressed of login button, if you want!
    // Add your authentication logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // For now, let's just print the credentials
    print("Username: $username");
    print("Password: $password");
    if(password == "123")
    {
      return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
          ),
        ),
      );
    }
    else
    {
      print("wrong password, password is 123");
      Navigator.pop(context);
      return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(
          ),
        ),
      );
    }

    // Add your authentication logic (e.g., API call, database check) here
    // If authentication is successful, navigate to the home screen
    // If unsuccessful, show an error message
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Colors.white,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 33.00,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RoundedPhoto(),
            const SizedBox(
              height: 20.00,
            ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22.00,
                fontWeight: FontWeight.w600,
              ),
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 33.00,
                  fontWeight: FontWeight.w800,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.00),
                  borderSide: const BorderSide(
                    width: 12.00,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.00,
                fontWeight: FontWeight.w900,
              ),
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hoverColor: Colors.black,
                labelStyle: const TextStyle(
                  color: Color(0xff2c332c),
                  fontSize: 33.00,
                  fontWeight: FontWeight.w800,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.00),
                  borderSide: BorderSide(
                    width: 12.00,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: ()=>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                  ),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
