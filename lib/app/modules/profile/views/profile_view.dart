import 'package:demo_ecommerce_app/app/modules/edit_profil/views/edit_profil_view.dart';
import 'package:demo_ecommerce_app/app/modules/my_order/views/my_order_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Tambahkan navigasi ke halaman pengaturan jika ada
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/8422/7597/6a13675968b0dea5aaf04fc210f02dc0?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=muB0obxsLLBND4ogjQDtD07blhSKTfVLwNq8117t0De06I39HA1kEKq-26E-OkkvAilfWoV8LHwMubeH7IXR3xHbHXsz8Oqe2DAydNrdDSanvW7-uPay4DRVH-TXLNPvZxybPjPnqY0U6EEV7O4sLvJsyR--WoeLS3SK1EdM8FDOaVY-1Zo3CV9BNnT9kPS6eHbjq7kwlaydCad1puWWO2OiDjpa2iwuPQ3QseGT9WgkbytdcINsIJJOyzWc3A1MpysBwdUEICZz-QLs2KpWpdTowao9nBUVAwjBodX06XtxTrIwzsjfHdl1uThGG4jXcaqT7JCUUsnGz0a7mDEL7Q__', // Ganti dengan URL gambar
              ),
            ),
            title: const Text(
              'Udacoding',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('udacoding@mail.com'),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfilView(),
                  ),
                );
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text('Review'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ), // Panah ke kanan
            onTap: () {
              // Tambahkan navigasi ke halaman review jika ada
            },
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: const Text('Order List'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Get.to(() => const MyOrderView()); // Navigasi ke MyOrderView
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Wishlist'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ), // Panah ke kanan
            onTap: () {
              // Tambahkan navigasi ke halaman wishlist jika ada
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ), // Panah ke kanan
            onTap: () {
              // Tambahkan fungsi logout jika diperlukan
            },
          ),
        ],
      ),
    );
  }
}
