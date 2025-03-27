import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  final CheckoutController controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProductCard(),
            const SizedBox(height: 10),
            _buildShippingAddress(),
            const SizedBox(height: 10),
            _buildShippingMethod(),
            const SizedBox(height: 10),
            _buildPaymentMethod(),
            const Spacer(),
            _buildSummary(),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard() {
    return Card(
      child: ListTile(
        leading: Image.network(
          'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__',
          width: 50,
        ),
        title: const Text(
          'Classical Leather Watch in Black',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '\$129.00',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$150.00',
              style: TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShippingAddress() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: const Icon(Icons.location_on, color: Colors.grey),
        title: const Text(
          'Shipping address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'Udacoding | 081234567890\nTiban Indah Street\nKepulauan Riau - Batam',
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  Widget _buildShippingMethod() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: const Icon(Icons.local_shipping, color: Colors.grey),
        title: const Text(
          'Shipping method',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('JTN\nReceived at 2 Jul - 4 Jul'),
        trailing: const Text(
          '\$0',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildPaymentMethod() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.network(
          'https://s3-alpha-sig.figma.com/img/f717/ba42/820ecee1a528cb11587f2108c00eccf7?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=q7jgHi7RhqOi0fXbggyIEOQulnlSTiKPxLYC6otFIMFbMXm-ao3iPeeA8yk-ziOrK4FLy2B2kud61njroKVbwZuyYnvrrkPiS8eWotv3vgkGGrwhdNIp67hl3~rY6vuyVeKdf4UTytsn6bXHw4r83a~X01N2JoDm8Mv-n4jjIbFt9BEHKHvAH6u9nfxq6W2Wo7slO1tj6hQjhBfSYodCYi90c4cZnzGoMGeBbfaG5IJjiLrpJEmoEjsUpgxo8XBbsrEqKaIREDZpQz0KB6BXTaF844lWZYlrA6z223m-bsP4DXMNF3-TDBxdm0l5aNMPeVY4QW3J~Zs6XZ9TmvqZCA__', // Ganti dengan URL logo Gopay
          width: 90,
          height: 90,
        ),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  Widget _buildSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text('Sub total (1 item)'), Text('\$129.00')],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text('Shipping'), Text('\$0')],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Total',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              '\$129.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              _showProcessingPaymentDialog();
            },
            child: const Text('Order', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  // Function untuk menampilkan dialog Processing Payment
  void _showProcessingPaymentDialog() {
    Get.dialog(
      Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Animasi Loading
              const CircularProgressIndicator(
                color: Colors.red, // Warna merah sesuai gambar
              ),
              const SizedBox(height: 20),
              // Teks Processing Payments
              const Text(
                "Processing Payments...",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Sesuai gambar
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );

    // Simulasi proses pembayaran selama 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Get.back(); // Tutup dialog loading
      _showOrderConfirmedDialog(); // Buka dialog Order Confirmed
    });
  }

  // Function untuk menampilkan dialog Order Confirmed
  void _showOrderConfirmedDialog() {
    Get.dialog(
      Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 60),
              const SizedBox(height: 10),
              const Text(
                "Order Confirmed",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Get.back();
                    // Navigasi ke halaman My Order (ganti dengan route yang sesuai)
                    Get.toNamed('/my-order');
                  },
                  child: const Text(
                    "My Order",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Get.back();
                    // Navigasi ke halaman Home (ganti dengan route yang sesuai)
                    Get.toNamed('/navbar');
                  },
                  child: const Text(
                    "Back to Home",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
