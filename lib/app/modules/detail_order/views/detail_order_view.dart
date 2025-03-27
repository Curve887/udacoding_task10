import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_order_controller.dart';
import '../../detail_pesanan/views/detail_pesanan_view.dart';
// Pastikan path sesuai dengan struktur folder di project Anda

class DetailOrderView extends GetView<DetailOrderController> {
  const DetailOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail order'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),

      // Bagian konten
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // -----------------------------
            // Bagian Atas: Step Progress
            // -----------------------------
            SizedBox(
              height: 80,
              child: Stack(
                children: [
                  // Garis lurus di belakang icon-icon
                  Positioned(
                    top: 35, // atur agar berada di tengah icon
                    left: 0,
                    right: 0,
                    child: Container(height: 2, color: Colors.grey[300]),
                  ),
                  // Deretan ikon step
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildStepIcon(Icons.shopping_bag, true),
                      buildStepIcon(Icons.local_shipping, true),
                      buildStepIcon(Icons.inventory_2, true),
                      buildStepIcon(Icons.home, false),
                      buildStepIcon(Icons.done_all, false),
                    ],
                  ),
                ],
              ),
            ),

            // -----------------------------
            // Order Status
            // -----------------------------
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order Status",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),

            // Timeline Status
            Column(
              children: const [
                TimelineItem(
                  color: Colors.red,
                  title: "Arrived - Thur, 31 May",
                  description:
                      "Rorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  time: "12.00",
                  isLast: false,
                ),
                TimelineItem(
                  color: Colors.grey,
                  title: "Shipping - Thur, 31 May",
                  description:
                      "Rorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  time: "12.00",
                  isLast: false,
                ),
                TimelineItem(
                  color: Colors.grey,
                  title: "Shipping - Wed, 30 May",
                  description:
                      "Rorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  time: "12.00",
                  isLast: false,
                ),
                TimelineItem(
                  color: Colors.grey,
                  title: "Shipping - Tue, 29 May",
                  description:
                      "Rorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  time: "12.00",
                  isLast: false,
                ),
                TimelineItem(
                  color: Colors.grey,
                  title: "Seller - Mon, 28 May",
                  description:
                      "Rorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  time: "12.00",
                  isLast: true,
                ),
              ],
            ),
          ],
        ),
      ),

      // Tombol di bagian bawah
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Sesuaikan warna
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Navigasi ke DetailPesananView
              Get.to(() => const DetailPesananView());
            },
            child: const Text(
              'Lihat Detail Pesanan',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  // Widget icon step
  Widget buildStepIcon(IconData iconData, bool isActive) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: isActive ? Colors.red : Colors.grey[300],
      child: Icon(iconData, color: Colors.white),
    );
  }
}

// ---------------------------------------------
// TimelineItem: Widget untuk item status order
// ---------------------------------------------
class TimelineItem extends StatelessWidget {
  final Color color;
  final String title;
  final String description;
  final String time;
  final bool isLast;

  const TimelineItem({
    Key? key,
    required this.color,
    required this.title,
    required this.description,
    required this.time,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bagian Kiri: Bullet dan Garis Vertikal
        Column(
          children: [
            // Titik Bullet
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            // Garis di bawah bullet (jika bukan item terakhir)
            if (!isLast) Container(width: 2, height: 60, color: color),
          ],
        ),
        const SizedBox(width: 8),

        // Bagian Tengah: Detail Teks (title, description)
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(description, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),

        // Bagian Kanan: Waktu
        Text(time, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
