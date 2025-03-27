import 'package:get/get.dart';

class WishlistController extends GetxController {
  var wishlistItems =
      <Map<String, dynamic>>[
        {
          "id": 1,
          "name": "Classical Leather Watch",
          "price": 129.00,
          "oldPrice": 150.00,
          "rating": 4.8,
          "sold": "12K",
          "image":
              "https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__", // contoh gambar jam tangan
          "isFavorite": true,
        },
        {
          "id": 2,
          "name": "Chunky Milk Chocolate",
          "price": 129.00,
          "oldPrice": 150.00,
          "rating": 4.8,
          "sold": "12K",
          "image":
              "https://s3-alpha-sig.figma.com/img/12ff/d22a/03b4a0a259ce94cc5f581ff2df2ee705?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MPxXWXSFl~AVEL4~kjYTBzv60MwZ149AtKG2Jt4AeukoYdrDSBfc3XUUtxovuOqxRdhnseoKvwgBiMidszzPywStdA-zwTR-llSUL4k11LPQI4dNpmyOFvTQx3wXo0jItkoSyR7GPH~Xyp4wIHF23IxKaX1CsWAl7B6szxkhjZhYP5FnsFVTbVjhe3UVhVDJN4KcKFXvnEo2PqH4gQ06yFUDas8sLwZ3qY4wrsSqaeOwktX~5h7AgiZ2eMvE4uJ6p-wm9zCErlERDdQPGQSw2zVQfsSE54qg8C68BcpnkUc0nrYx-Q~8d1XRyngAlaLV5kfSOsXEVxJlE4C1A0YfuA__", // contoh gambar coklat
          "isFavorite": true,
        },
        {
          "id": 3,
          "name": "Chunky Milk Chocolate",
          "price": 129.00,
          "oldPrice": 150.00,
          "rating": 4.8,
          "sold": "12K",
          "image":
              "https://s3-alpha-sig.figma.com/img/12ff/d22a/03b4a0a259ce94cc5f581ff2df2ee705?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MPxXWXSFl~AVEL4~kjYTBzv60MwZ149AtKG2Jt4AeukoYdrDSBfc3XUUtxovuOqxRdhnseoKvwgBiMidszzPywStdA-zwTR-llSUL4k11LPQI4dNpmyOFvTQx3wXo0jItkoSyR7GPH~Xyp4wIHF23IxKaX1CsWAl7B6szxkhjZhYP5FnsFVTbVjhe3UVhVDJN4KcKFXvnEo2PqH4gQ06yFUDas8sLwZ3qY4wrsSqaeOwktX~5h7AgiZ2eMvE4uJ6p-wm9zCErlERDdQPGQSw2zVQfsSE54qg8C68BcpnkUc0nrYx-Q~8d1XRyngAlaLV5kfSOsXEVxJlE4C1A0YfuA__",
          "isFavorite": true,
        },
        {
          "id": 4,
          "name": "Classical Leather Watch",
          "price": 129.00,
          "oldPrice": 150.00,
          "rating": 4.8,
          "sold": "12K",
          "image":
              "https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__",
          "isFavorite": true,
        },
      ].obs;

  void toggleFavorite(int index) {
    wishlistItems[index]["isFavorite"] = !wishlistItems[index]["isFavorite"];
    wishlistItems.refresh();
  }
}
