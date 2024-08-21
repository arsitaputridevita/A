import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: InputDecoration(labelText: 'name'),
            ),
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(labelText: 'email'),
            ),
            TextField(
              controller: controller.passwordController,
              decoration: InputDecoration(labelText: 'password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Obx(
              () => controller.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () => controller.register(),
                      child: Text('Register'),
                    ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: Text('Already have an account? Login'),
            )
          ],
        ),
      ),
    );
  }
}
