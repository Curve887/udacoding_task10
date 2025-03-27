import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_pesanan_controller.dart';

class DetailPesananView extends GetView<DetailPesananController> {
  const DetailPesananView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 1. Product Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Product",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Gambar produk
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__',
                            // Ganti dengan URL gambar contoh
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),

                        // Nama & Jumlah
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Classical Leather Watch in Black",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "1 item",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),

                        // Harga
                        const Text(
                          "\$129.00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Shipping Info Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Shipping Info",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Payment Method
                    _rowInfo("Payment Method", "Gopay"),
                    const SizedBox(height: 8),

                    // Courier
                    _rowInfo("Courier", "JTN"),
                    const SizedBox(height: 8),

                    // Shipping Address
                    _rowInfo(
                      "Shipping Address",
                      "Udacoding | 081234567890\nTiban Indah Street\nKepulauan Riau - Batam",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Ringkasan Biaya (Total) Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _rowCost("Sub amount", "\$129.00"),
                    const SizedBox(height: 8),
                    _rowCost("Shipping Fee", "\$0"),
                    const SizedBox(height: 8),
                    _rowCost("Tax", "\$0"),
                    const Divider(height: 24),
                    _rowCost("Total", "\$129", isBold: true, fontSize: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk baris label & value (Shipping Info)
  Widget _rowInfo(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        SizedBox(
          width: 120,
          child: Text(label, style: const TextStyle(color: Colors.grey)),
        ),
        // Value (bisa multi-baris)
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  // Widget untuk baris ringkasan biaya
  Widget _rowCost(
    String label,
    String cost, {
    bool isBold = false,
    double fontSize = 14,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          cost,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
