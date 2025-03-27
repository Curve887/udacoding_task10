import 'package:demo_ecommerce_app/app/modules/detail_produk/views/detail_produk_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xffB90F0F),
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onChanged: (value) => controller.searchText.value = value,
            decoration: InputDecoration(
              hintText: 'Search for anything...',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Aksi saat icon cart ditekan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              // Banner
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/8c0f/4906/7106067f50dedb5c7ff7db660a06cae2?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IevnE0WoQGVfQ55DOnkNGPamXReha510wh7jKoz~2rOw0Pua1yxY7vbFnT-1WEG6XKCpEixGmiHbhISM51LLQAI9-Sw-vROIs0BPQL5NPc~~ZA7zwiyWOBM9yGU017Y8dZIC5TpJu3pfvYH2dmb6jy--oXSMYi18rYoDPDAZ~50fzRbMQ9dP6vRtiVp2lv-K1cvyHfX5uePlxZ-MqSodro4Q3DEzgQLUKjNHBqkREWcnGQCkcCRw16l0DrsaFunJU4dcKvUfgYGU74w9muIxJqZ0ua~HcmquqbJHwIe2reXNAG~Y41yR0QiKaJB5sjfQ6-zaZt4a9c1AJSptoBGucQ__',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Active Summer With Juice Milk 300ml',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 20),

              // Category Section
              Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(icon: Icons.checkroom, label: 'T-shirt'),
                  CategoryItem(icon: Icons.shopping_bag, label: 'Bag'),
                  CategoryItem(
                    icon: Icons.local_grocery_store,
                    label: 'Groceries',
                  ),
                ],
              ),
              SizedBox(height: 20),

              // For You Section
              Text(
                'For you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MasjDTh195a1dW7~n6pSQC0CybYy2uJ0WMqlvZtBn-2fyWSs0B~5LgVs~3nb7hcoU-G3-Zk2uy9jOkhEylSVYFBXMRTjtnvoPeH-2O4DnB4z7g7CNhuoq8XmuKx~3CdcyYdxEjU5YPFT99fcD6b-WGgTO8StzUZ3BxHD6JmA1ly8dRUyPycdvf7Pc7ZiRnZZq~bny~nvEmgSQeza32n1miWDuNOk9b8fwGJfCfyu7epGPBxJtEi~lek9jMD3egj8-GhNcVW8zuGQTRwA7WCY~YHsMMRJcL3GeHLfu2YoR9cMbftgDH2iNFHMsTT4~y76u0XTwLLhv1JSyhjkahf3Dg__',
                    title: 'Classical Leather Watch',
                  ),
                  ProductCard(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/12ff/d22a/03b4a0a259ce94cc5f581ff2df2ee705?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JrKoQurs1bJu3IacUdM6MnjuYEwmcGm2~Lqf4tQH-pGaYAzzlKKT3J27I2XPrW~W1TAma9b3-QEx45cETnzwF0FSAs0jJP2uKOTDpNslbaE-HLlEJdrJZRyhypNP71k9WtY~X-7cxIzgBk1FSXL5fJmM1I93patGpjGSbQwJI917cN~BtCvrMslYoNVlIbKQFRy2qU9bZeUDFPa-IRt0w15WUXqFh3vvqSagwk0~Q0u-RdYoGBD-LgK5olCuyKfLRKnNZ-MuOTXgXJmr5laqr-TRTjrLnWABqpgNrvluguOJ7DkkC-vrN0VjVy2gJMPOTe2y~m8Fl6oZ0x-M~1v3Pg__',
                    title: 'Chunky Milk Chocolate',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.black),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProductCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk
        Get.to(() => ProductDetailPage());
      },
      child: Container(
        width: 150,
        height: 200,
        margin: EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, width: 120, height: 120, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
