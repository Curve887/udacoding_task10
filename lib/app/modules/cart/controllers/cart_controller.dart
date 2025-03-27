import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems =
      <Map<String, dynamic>>[
        {
          "id": 1,
          "name": "Classical Leather Watch in Black",
          "price": 129.00,
          "oldPrice": 150.00,
          "image":
              "https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__", // contoh gambar
          "quantity": 1,
          "isSelected": true,
        },
        {
          "id": 2,
          "name": "Classical Leather Watch in Black",
          "price": 129.00,
          "oldPrice": 150.00,
          "image":
              "https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__",
          "quantity": 1,
          "isSelected": false,
        },
        {
          "id": 3,
          "name": "Classical Leather Watch in Black",
          "price": 129.00,
          "oldPrice": 150.00,
          "image":
              "https://s3-alpha-sig.figma.com/img/87c7/ff22/ade51a66f64c7d9f670411a5a5c57726?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qK1NsG7IataRbqY2HlBOem~TSiRYS6zFqhWIWYsI-iYxw6wAkAjPIBbO0GLh5F2VXFe-IfelEwcNfYyI85g7wc74rZxd-X45vrE16PT5b1NeyJnqaqPpsi2kbys~D8d5eD1I15oohOsmp0Y8ofgPqiDIgsbammxsDzWO0epI6tGzfXUfgTlleQHiq3icxrfkYnxLeEOggSl3Q~cbMY0X6pZ-oAp0ZuJMdktsBXVjAEpwBG9rPfhAcAG8j~FQxWhuGvxTcsL1HH9RGYDB09Zr75cOuKGuUdSamKR2nwZ5SePPUSBXTmU-hYejYunHJYhrf~zcv5VOUxsqOLRwXRPtmg__",
          "quantity": 1,
          "isSelected": false,
        },
      ].obs;

  void toggleSelection(int index) {
    cartItems[index]["isSelected"] = !cartItems[index]["isSelected"];
    cartItems.refresh();
  }

  void increaseQuantity(int index) {
    cartItems[index]["quantity"] += 1;
    cartItems.refresh();
  }

  void decreaseQuantity(int index) {
    if (cartItems[index]["quantity"] > 1) {
      cartItems[index]["quantity"] -= 1;
      cartItems.refresh();
    }
  }

  void removeItem(int index) {
    cartItems.removeAt(index);
  }

  double get totalPrice {
    return cartItems
        .where((item) => item["isSelected"] == true)
        .fold(0.0, (sum, item) => sum + (item["price"] * item["quantity"]));
  }

  int get selectedItemCount {
    return cartItems.where((item) => item["isSelected"] == true).length;
  }
}
