import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  double changeValue = 0;
  List Product = [
    {
      'id': '1',
      'Name': 'I Phone XS Max',
      'Category': 'Electronic Device',
      'price': '34000'
    },
    {
      'id': '2',
      'Name': 'Watch',
      'Category': 'Electronic Device',
      'price': '2600'
    },
    {
      'id': '3',
      'Name': 'I Phone 6',
      'Category': 'Electronic Device',
      'price': '15000'
    },
    {
      'id': '4',
      'Name': 'T-Shirt',
      'Category': 'Clothe',
      'price': '8000'
    },
    {
      'id': '5',
      'Name': 'Jeans',
      'Category': 'Clothe',
      'price': '5000'
    },
    {'id': '6',
      'Name': 'Refigerator',
      'Category': 'Electrics',
      'price': '50000'},
    {
      'id': '7',
      'Name': 'TV',
      'Category': 'Electronic Device',
      'price': '42000'
    },
    {
      'id': '8',
      'Name': 'Fan',
      'Category': 'Electronic Device',
      'price': '7250'
    },
    {
      'id': '9',
      'Name': 'Laptop',
      'Category': 'Electronic Device',
      'price': '23000'
    },
    {
      'id': '10',
      'Name': 'Earbuds',
      'Category': 'Electronic Device',
      'price': '7000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products Filter",
        ),
        centerTitle: true,
        actions: [
          const Icon(Icons.apps_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              min: 0,
              max: 80000,
              onChanged: (double val){
                setState(() {
                  changeValue = val;
                });
              },
              value: changeValue,
            ),
            Text("All Products < Rs. ${changeValue.toInt()}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              child: Column(
                children: Product.map((e){
                  if(double.parse(e['price']) <= changeValue)
                  {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 90,
                      width: w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,2),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e['id'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e['Name'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff222222),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(e['Category'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffB5B5B5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("Rs. ${e['price']}",
                                style: const TextStyle(
                                  color: Color(0xffB6B6B6),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Container();
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
