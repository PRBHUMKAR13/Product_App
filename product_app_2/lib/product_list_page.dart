import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 68, 5, 136),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(products[index]['image']),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rs ${products[index]['price']}/-',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailsPage(
                                    product: products[index]),
                              ),
                            );
                          },
                          child: Text('View Details'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 360,
                height: 480,
                child: Image.asset(
                  product['image'],
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Price: Rs ${product['price']}/-',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              product['Description'],
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sample data for products
List<Map<String, dynamic>> products = [
  {
    'name': 'iPhone 13 Pro',
    'price': 129999.0,
    'image': 'assets/iphone13.jpeg',
    'Description':
        '- Display: 6.1-inch Super Retina XDR display\n- Processor: A15 Bionic chip\n- Camera System: Dual 12MP cameras (Wide and Ultra Wide)\n- Battery Life: Up to 19 hours of video playback\n- Storage Options: 128GB, 256GB, 512GB\n- Operating System: iOS 15 (upgradable to newer versions)\n- Special Features: 5G capability, Ceramic Shield front cover, MagSafe technology',
  },
  {
    'name': 'Google Pixel 8 Pro',
    'price': 87999.0,
    'image': 'assets/pixel8.jpeg',
    'Description':
        '- 6.7-inch LTPO OLED display with 120Hz refresh rate\n- Processor: Google Tensor G3 chip\n- Camera System: Triple camera setup (50MP Wide, 48MP Ultra Wide, 48MP Telephoto)\n- Battery Life: All-day battery with Extreme Battery Saver mode\n- Storage Options: 128GB, 256GB, 512GB, 1TB\n- Operating System: Android 14 (upgradable)\n- Special Features: Advanced AI features, 5G support, Titan M2 security chip, real-time language translation',
  },
  {
    'name': 'Samsung S21 Ultra Pro',
    'price': 115399.0,
    'image': 'assets/S21.jpeg',
    'Description':
        '- 6.8-inch Dynamic AMOLED 2X with 120Hz refresh rate\n- Processor: Exynos 2100 (international) / Snapdragon 888 (USA)\n- Camera System: Quad camera setup (108MP Wide, 12MP Ultra Wide, two 10MP Telephoto)\n- Battery Life: 5000mAh battery\n- Storage Options: 128GB, 256GB, 512GB\n- Operating System: Android 11 (upgradable)\n- Special Features: S Pen support, 5G capability, 100x Space Zoom, Ultra-wideband (UWB) support',
  },
  {
    'name': 'OnePlus 9 Pro',
    'price': 64999.0,
    'image': 'assets/Oneplus 9 pro.jpeg',
    'Description':
        '- Display: 6.7-inch Fluid AMOLED with 120Hz refresh rate\n- Processor: Snapdragon 888\n- Camera System: Quad camera setup (48MP Wide, 50MP Ultra Wide, 8MP Telephoto, 2MP Monochrome)\n- Battery Life: 4500mAh battery with Warp Charge 65T\n- Storage Options: 128GB, 256GB\n- Operating System: OxygenOS based on Android 11\n- Special Features: Hasselblad camera, 5G capability, fast wireless charging',
  },
  {
    'name': 'Xiaomi Mi 11 Ultra',
    'price': 69999.0,
    'image': 'assets/Xiami ultra 11.jpeg',
    'Description':
        '- Display: 6.81-inch AMOLED with 120Hz refresh rate\n- Processor: Snapdragon 888\n- Camera System: Triple camera setup (50MP Wide, 48MP Ultra Wide, 48MP Telephoto)\n- Battery Life: 5000mAh battery with 67W fast charging\n- Storage Options: 256GB, 512GB\n- Operating System: MIUI 12 based on Android 11\n- Special Features: Secondary display, 5G capability, IP68 rating',
  },
  {
    'name': 'Sony Xperia 1 III',
    'price': 99999.0,
    'image': 'assets/Sony Xperia.jpeg',
    'Description':
        '- Display: 6.5-inch 4K HDR OLED with 120Hz refresh rate\n- Processor: Snapdragon 888\n- Camera System: Triple camera setup (12MP Wide, 12MP Ultra Wide, 12MP Telephoto)\n- Battery Life: 4500mAh battery with 30W fast charging\n- Storage Options: 256GB\n- Operating System: Android 11\n- Special Features: CinemaWide display, 5G capability, IP65/68 rating',
  },
  {
    'name': 'Oppo Find X3 Pro',
    'price': 84999.0,
    'image': 'assets/oppo X3.jpeg',
    'Description':
        '- Display: 6.7-inch AMOLED with 120Hz refresh rate\n- Processor: Snapdragon 888\n- Camera System: Quad camera setup (50MP Wide, 50MP Ultra Wide, 13MP Telephoto, 3MP Microlens)\n- Battery Life: 4500mAh battery with 65W SuperVOOC 2.0 charging\n- Storage Options: 256GB\n- Operating System: ColorOS 11.2 based on Android 11\n- Special Features: Billion Color display, 5G capability, IP68 rating',
  },
  {
    'name': 'Vivo X70 Pro+',
    'price': 79999.0,
    'image': 'assets/Vivo V70.jpeg',
    'Description':
        '- Display: 6.78-inch AMOLED with 120Hz refresh rate\n- Processor: Snapdragon 888+\n- Camera System: Quad camera setup (50MP Wide, 48MP Ultra Wide, 12MP Portrait, 8MP Periscope)\n- Battery Life: 4500mAh battery with 55W fast charging\n- Storage Options: 256GB\n- Operating System: Funtouch OS 12 based on Android 11\n- Special Features: Zeiss optics, 5G capability, IP68 rating',
  },
  {
    'name': 'Realme GT 2 Pro',
    'price': 54999.0,
    'image': 'assets/realme.jpeg',
    'Description':
        '- Display: 6.7-inch AMOLED with 120Hz refresh rate\n- Processor: Snapdragon 8 Gen 1\n- Camera System: Triple camera setup (50MP Wide, 50MP Ultra Wide, 2MP Macro)\n- Battery Life: 5000mAh battery with 65W SuperDart charging\n- Storage Options: 128GB, 256GB\n- Operating System: Realme',
  }
];
