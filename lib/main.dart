import 'package:flutter/material.dart';

import 'api_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Details",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "data:image/webp;base64,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",
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("Adison Jones", style: TextStyle(fontSize: 32)),
                      Text("Age: 63"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(children: [Icon(Icons.email), Text("email@email.com")]),

              SizedBox(height: 20),
              GestureDetector(
                onTap: () async {
                  ApiHelper apiHelper = ApiHelper();
                  Hotel? hotel = await apiHelper.getHotel();


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelView(hotel: hotel!),

                    ),
                  );

                  setState(() {});
                  count++;
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Move to next page",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelView extends StatelessWidget {
  HotelView({super.key, required this.hotel});

  Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🖼 Image
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      "data:image/jpeg;base64,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",
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 180,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.image, size: 50),
                      ),
                    ),
                  ),

                  // Availability badge
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Available',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hotel name
                    Text(
                      hotel.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    // Location
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            hotel.price_per_night,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    // Rating + Price row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ⭐ Rating
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '5.0 (240)',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        RichText(
                          text: TextSpan(
                            text: '₹${hotel.price_per_night}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: const [
                              TextSpan(
                                text: ' / night',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    GestureDetector(
                      onTap: () {
                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return AlertDialog(
                        //       title: Text("Book Hotels"),
                        //       actions: [
                        //         Text("Yes"),
                        //         Text("No")
                        //       ],
                        //
                        //     );
                        //   },
                        // );

                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 200,
                              width: double.infinity,
                              child: Column(
                                children: [Text("This is bottom sheet")],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
