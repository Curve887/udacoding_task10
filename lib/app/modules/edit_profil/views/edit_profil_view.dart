import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/edit_profil_controller.dart';

class EditProfilView extends GetView<EditProfilController> {
  const EditProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/8422/7597/6a13675968b0dea5aaf04fc210f02dc0?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=muB0obxsLLBND4ogjQDtD07blhSKTfVLwNq8117t0De06I39HA1kEKq-26E-OkkvAilfWoV8LHwMubeH7IXR3xHbHXsz8Oqe2DAydNrdDSanvW7-uPay4DRVH-TXLNPvZxybPjPnqY0U6EEV7O4sLvJsyR--WoeLS3SK1EdM8FDOaVY-1Zo3CV9BNnT9kPS6eHbjq7kwlaydCad1puWWO2OiDjpa2iwuPQ3QseGT9WgkbytdcINsIJJOyzWc3A1MpysBwdUEICZz-QLs2KpWpdTowao9nBUVAwjBodX06XtxTrIwzsjfHdl1uThGG4jXcaqT7JCUUsnGz0a7mDEL7Q__', // Ganti dengan URL gambar contoh
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  // Tambahkan fungsi ubah foto profil jika diperlukan
                },
                child: const Text(
                  'Change Profile',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              // Nama
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Nama', style: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(height: 4),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              const SizedBox(height: 10),
              // Email
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Email', style: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(height: 4),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Masukkan email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              const SizedBox(height: 10),
              // Phone
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Phone', style: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(height: 4),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Masukkan nomor telepon',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              const SizedBox(height: 20),
              // Update Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Tambahkan fungsi update jika diperlukan
                  },
                  child: const Text(
                    'Update',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
