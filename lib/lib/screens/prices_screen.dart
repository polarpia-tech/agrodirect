import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../models/price_model.dart';

class PricesScreen extends StatelessWidget {
  final FirebaseService _firebaseService = FirebaseService();

  PricesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ημερήσιες Τιμές Αγοράς'),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder<List<PriceModel>>(
        stream: _firebaseService.getDailyPrices(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('Δεν υπάρχουν διαθέσιμες τιμές αυτή τη στιγμή.'),
            );
          }

          final prices = snapshot.data!;

          return ListView.builder(
            itemCount: prices.length,
            itemBuilder: (context, index) {
              final price = prices[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  title: Text(
                    price.productName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Text('Πηγή: ${price.marketSource}'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${price.avgPrice.toStringAsFixed(2)} ${price.unit}',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Εύρος: ${price.minPrice} - ${price.maxPrice}',
                        style: const TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
