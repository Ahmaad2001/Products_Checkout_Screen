import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Checkout',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange, Colors.yellow],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Delivery Address',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 60,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 232, 232))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Select Location',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color.fromARGB(250, 153, 153, 153),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Payment Method',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 78,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 232, 232))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Online Payment',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Image.asset('assets/images/Visa.png'),
                  const SizedBox(
                    width: 6,
                  ),
                  Image.asset('assets/images/Mastercard.png'),
                  const SizedBox(
                    width: 6,
                  ),
                  Image.asset('assets/images/DinersClub.png'),
                  const SizedBox(
                    width: 6,
                  ),
                  Image.asset('assets/images/Discover.png'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 78,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 232, 232))),
              child: Row(
                children: [
                  const Text(
                    'Cash On Delivery',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 175,
                  ),
                  Image.asset(
                    'assets/images/cash-on-delivery.png',
                    width: 36,
                    height: 38,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Order Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: TextStyle(color: Color.fromARGB(250, 153, 153, 153)),
                ),
                Text(
                  '290',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(color: Color.fromARGB(250, 153, 153, 153)),
                ),
                Text(
                  '10',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
