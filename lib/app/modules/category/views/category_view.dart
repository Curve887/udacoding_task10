import 'package:flutter/material.dart';


class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Category',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {
              // Aksi saat icon cart ditekan
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildCategoryItem("Men's Fashion"),
          _buildCategoryItem("Women's Fashion"),
          _buildCategoryItem("Muslim Fashion"),
          _buildCategoryItem("Electronics"),
          _buildCategoryItem("Mom & Baby"),
          _buildCategoryItem("Health"),
          _buildCategoryItem("Sports"),
          _buildCategoryItem("Food"),
          _buildCategoryItem("Drinks"),
          _buildCategoryItem("Automotive"),
          _buildCategoryItem("Handphone"),
          _buildCategoryItem("Computer & Laptop"),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Aksi saat kategori ditekan
          },
        ),
        const Divider(height: 1, thickness: 0.5),
      ],
    );
  }
}
