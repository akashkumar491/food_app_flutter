import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        // Height for modal
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          maxWidth: MediaQuery.of(context).size.width * 0.5,
        ),
        child: cartProvider.items.isEmpty
            ? Center(child: Text('No items in cart.'))
            : Column(
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartProvider.items.length,
                      itemBuilder: (ctx, idx) {
                        final item = cartProvider.items[idx];
                        return ListTile(
                          leading: Image.network(
                            item.foodItem.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(item.foodItem.name),
                          subtitle: Text('Qty: ${item.quantity}'),
                          trailing: Text(
                            '${item.foodItem.price * item.quantity} ₹',
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Total: ${cartProvider.totalAmount} ₹'),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Checkout')),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
