import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Title
              const Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Etiam mollis metus non purus',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Product Image
              Center(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(height: 16),
              // Pricing Details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Rs.99',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    'Rs.56',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(120, 40),
                ),
                child: const Text('Add to cart'),
              ),
              const SizedBox(height: 16),
              // Package Sizes
              const Text(
                'Package size',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildPackageOption('Rs.106', '500 pellets', true),
                  _buildPackageOption('Rs.166', '110 pellets', false),
                  _buildPackageOption('Rs.252', '300 pellets', false),
                ],
              ),
              const SizedBox(height: 16),
              // Product Details Section
              const Text(
                'Product Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisl odio. Nulla facilisi. Nunc risus massa, gravida et egestas a, pretium vel tellus.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Ingredients Section
              const Text(
                'Ingredients',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Nunc risus massa, gravida et egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Expiry Date and Brand
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Expiry Date',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25/12/2023',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Brand Name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Something',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Ratings Section
              const Text(
                '4.4',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 24),
                  const SizedBox(width: 4),
                  const Text('923 Ratings and 257 Reviews',
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 8),
              _buildRatingBar('5', 67),
              _buildRatingBar('4', 20),
              _buildRatingBar('3', 7),
              _buildRatingBar('2', 1),
              _buildRatingBar('1', 2),
              const SizedBox(height: 16),
              // User Review Section
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: const Text('E'),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Erric Hoffman',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '05 Oct 2020',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisl odio.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Go to Cart Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'GO TO CART',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPackageOption(String price, String size, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.blue[50] : Colors.white,
      ),
      child: Column(
        children: [
          Text(
            price,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            size,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBar(String star, int percentage) {
    return Row(
      children: [
        Text('$star ★', style: const TextStyle(fontSize: 14)),
        const SizedBox(width: 8),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: Colors.grey[300],
            color: Colors.orange,
          ),
        ),
        const SizedBox(width: 8),
        Text('$percentage%', style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
