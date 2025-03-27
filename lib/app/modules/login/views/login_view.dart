import '../controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Login', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset:
          true, // Agar layout menyesuaikan saat keyboard muncul
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40), // Memberikan jarak dari atas
            Text(
              'Access Your Account Now',
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 5),
            Text(
              'Hey there, Welcome back! Enjoy your new comer discount!',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 30),
            TextField(
              onChanged: (value) => controller.email.value = value,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              onChanged: (value) => controller.password.value = value,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: TextStyle(color: Colors.red),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/google.png',
                width: 24,
                height: 24,
              ),
              label: Text('Continue with Google'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/facebook.png',
                width: 24,
                height: 24,
              ),
              label: Text('Continue with Facebook'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.toNamed('/register');
              },
              child: Text(
                'Don’t have an account? Signup',
                style: TextStyle(color: Colors.red),
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => ElevatedButton(
                onPressed:
                    controller.isFormValid
                        ? () {
                          // Arahkan ke halaman Navbar setelah login
                          Get.offNamed('/navbar');
                        }
                        : null,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(
                    0xFFB90F0F,
                  ).withOpacity(controller.isFormValid ? 1.0 : 0.5),
                ),
              ),
            ),

            SizedBox(height: 20), // Jarak bawah agar tidak terlalu mepet
          ],
        ),
      ),
    );
  }
}
