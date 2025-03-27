import 'package:demo_ecommerce_app/app/modules/checkout/views/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar Produk Utama
              Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MasjDTh195a1dW7~n6pSQC0CybYy2uJ0WMqlvZtBn-2fyWSs0B~5LgVs~3nb7hcoU-G3-Zk2uy9jOkhEylSVYFBXMRTjtnvoPeH-2O4DnB4z7g7CNhuoq8XmuKx~3CdcyYdxEjU5YPFT99fcD6b-WGgTO8StzUZ3BxHD6JmA1ly8dRUyPycdvf7Pc7ZiRnZZq~bny~nvEmgSQeza32n1miWDuNOk9b8fwGJfCfyu7epGPBxJtEi~lek9jMD3egj8-GhNcVW8zuGQTRwA7WCY~YHsMMRJcL3GeHLfu2YoR9cMbftgDH2iNFHMsTT4~y76u0XTwLLhv1JSyhjkahf3Dg__',
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),

                    // Kotak Gambar Thumbnail
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Gambar Thumbnail 1
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MasjDTh195a1dW7~n6pSQC0CybYy2uJ0WMqlvZtBn-2fyWSs0B~5LgVs~3nb7hcoU-G3-Zk2uy9jOkhEylSVYFBXMRTjtnvoPeH-2O4DnB4z7g7CNhuoq8XmuKx~3CdcyYdxEjU5YPFT99fcD6b-WGgTO8StzUZ3BxHD6JmA1ly8dRUyPycdvf7Pc7ZiRnZZq~bny~nvEmgSQeza32n1miWDuNOk9b8fwGJfCfyu7epGPBxJtEi~lek9jMD3egj8-GhNcVW8zuGQTRwA7WCY~YHsMMRJcL3GeHLfu2YoR9cMbftgDH2iNFHMsTT4~y76u0XTwLLhv1JSyhjkahf3Dg__',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Gambar Thumbnail 2
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/8031/431a/3cbada82fcc37e4cfec14a0483add616?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=QVv8Ik9DXpKlcj7Z91XUpUwxvAkL50XYNnN6qRmpFdLKNg-Gtr1trX3oNdPCfVOzmXjDLd1El-BCu3wDzsb7aUHa0~MIARR8dLv6usmgqKa-ofC9pahdRbpXwSUf95ez~B-Pt0hm8e5zUdMDHAu4pu8y3UbJEr-3sxnrye0r3wHV7jVe6p7SCtkM-1~na1OXb3WQVRJGTRNXI17o9mdPKwAubLvPgtYI87uRoqgzdKZknS0oPS-CoxlhKXCiyJnkX-mrxEZlm5AhMUJ4EdeJgL-VYuAaywzNXDyfOGxB6A-whBpVD3RprqZZv01ASz5cXgvKggXsVCK3vYHTuG~7IA__',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Gambar Thumbnail 3
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/ff70/2902/115a7755c5b3d58ee1c94403d48b22e7?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=kYdoK~3XAQIPR567yh7MwaBKieA~7lRhHEwcmUEWPM5U5tXVNyruhu0CjdK3Yf5ZbZ2j-I-m0QxDYk9Ul3FAAh2Qf7yWJkdu21Fs1jybesO5ymzFqRCmEi4ULFmUSclAqu8okfqSpw50iwXzkK8By55SkWpc2iIsgRIl1bR9yIuGGbJBap-84XzWPnWlZlGkRhlNFqZdq6NhVQUMM12OAHck3o1d7s4wGf98khR0bTmDy0Be1If11eo9SxqYjhvaQxTgkt-mTD2iwsOIxBWK5Qa8S16Gf-4y~DoaxzRsRLWnD6J-BFwOqtwPtTdorjRKv7A-d~QQEs2gKFSIUiebVA__',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Nama Produk dan Harga
              Text(
                'Classical Leather Watch in Black',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          SizedBox(width: 4),
                          Text('4.8', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 4),
                          Text(
                            '| 12K sold',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        '\$129.00',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '\$150.00',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Deskripsi Produk
              Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Smart Product Case features a stylish design with a leather strap and black finish. The large round watch face provides a modern look.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Review Section
              Text(
                'Review',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/1cc0/7f1b/2855ad46b58662793478c75c31d8dd89?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JgSphJz6PVbvg2aLaDlvxIw3u~TM2QT1EDRZ2spdNgoOV1Rviag3y0a1R9a83euOo7Cv5KrDPwtzoXvFVrPCsmauEX2aCxX1638C7NRDnK80wgB~gLFksii~NdoOM38NOPXRLSwOpNUIuXYD0PUqLtxVY3MiD2DDhhkW0NSK2vjREI~ArPfrvq4JXjQ~cWDIeKsamj-1~rCH4gqYIs5E3tyP~CYSPsnyJtG4ZrnWB8e-dgOXL02p8nHyhwEjWh4EAY7axJ1tNaaxsb64wGdhvHBgt5WVU0NourGNkGn6i7uad2l5rwQbP0e1ustbxzjijMhRaC~j3s~4tTs3hujplg__',
                  ),
                ),
                title: Text('King Watch'),
                subtitle: Text('Awesome quality! Highly recommended.'),
              ),
              SizedBox(height: 20),

              // Produk Terkait
              Text(
                'Related Product',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RelatedProductCard(
                      title: 'Classical Leather Watch',
                      price: '\$129.00',
                      originalPrice: '\$150.00',
                      rating: '4.8',
                      sold: '12K',
                      imageUrl:
                          'https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MasjDTh195a1dW7~n6pSQC0CybYy2uJ0WMqlvZtBn-2fyWSs0B~5LgVs~3nb7hcoU-G3-Zk2uy9jOkhEylSVYFBXMRTjtnvoPeH-2O4DnB4z7g7CNhuoq8XmuKx~3CdcyYdxEjU5YPFT99fcD6b-WGgTO8StzUZ3BxHD6JmA1ly8dRUyPycdvf7Pc7ZiRnZZq~bny~nvEmgSQeza32n1miWDuNOk9b8fwGJfCfyu7epGPBxJtEi~lek9jMD3egj8-GhNcVW8zuGQTRwA7WCY~YHsMMRJcL3GeHLfu2YoR9cMbftgDH2iNFHMsTT4~y76u0XTwLLhv1JSyhjkahf3Dg__',
                    ),
                    RelatedProductCard(
                      title: 'Chunky Milk Chocolate',
                      price: '\$129.00',
                      originalPrice: '\$150.00',
                      rating: '4.8',
                      sold: '12K',
                      imageUrl:
                          'https://s3-alpha-sig.figma.com/img/12ff/d22a/03b4a0a259ce94cc5f581ff2df2ee705?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JrKoQurs1bJu3IacUdM6MnjuYEwmcGm2~Lqf4tQH-pGaYAzzlKKT3J27I2XPrW~W1TAma9b3-QEx45cETnzwF0FSAs0jJP2uKOTDpNslbaE-HLlEJdrJZRyhypNP71k9WtY~X-7cxIzgBk1FSXL5fJmM1I93patGpjGSbQwJI917cN~BtCvrMslYoNVlIbKQFRy2qU9bZeUDFPa-IRt0w15WUXqFh3vvqSagwk0~Q0u-RdYoGBD-LgK5olCuyKfLRKnNZ-MuOTXgXJmr5laqr-TRTjrLnWABqpgNrvluguOJ7DkkC-vrN0VjVy2gJMPOTe2y~m8Fl6oZ0x-M~1v3Pg__',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const CheckoutView());
                },
                child: const Text('Buy Now'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const CheckoutView());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffB90F0F),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add, color: Colors.white),
                    SizedBox(width: 5),
                    Text('Add to Cart', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RelatedProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String originalPrice;
  final String rating;
  final String sold;
  final String imageUrl;

  RelatedProductCard({
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.sold,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      originalPrice,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Text(rating, style: TextStyle(fontSize: 12)),
                    SizedBox(width: 4),
                    Text(
                      '| $sold sold',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
