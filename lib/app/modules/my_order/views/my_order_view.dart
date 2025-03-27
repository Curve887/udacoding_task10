import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/my_order_controller.dart';
import '../../detail_order/views/detail_order_view.dart'; // Pastikan path sesuai struktur folder

class MyOrderView extends GetView<MyOrderController> {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Order'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search for order",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sort & Date Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.sort),
                  label: const Text("Sort"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_today),
                  label: const Text("Date"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Order List
            Expanded(
              child: ListView(
                children: [
                  orderCard(
                    date: "16 May 2024",
                    status: "On Delivery",
                    statusColor: Colors.orange,
                  ),
                  orderCard(
                    date: "16 May 2024",
                    status: "Done",
                    statusColor: Colors.green,
                  ),
                  orderCard(
                    date: "16 May 2024",
                    status: "Canceled",
                    statusColor: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget orderCard({
    required String date,
    required String status,
    required Color statusColor,
  }) {
    return InkWell(
      // Ketika card ditekan, navigasi ke DetailOrderView
      onTap: () {
        Get.to(() => const DetailOrderView());
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order Date & Status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Product Image & Details
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar + Harga di bawah gambar
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "\$129.00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),

                  // Nama barang & jumlah item (biarkan teks wrap ke bawah)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Classical Leather Watch in Black",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          softWrap: true,
                        ),
                        SizedBox(height: 4),
                        Text("1 item", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Buy Again Button
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Buy Again",
                    style: TextStyle(color: Colors.white),
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
