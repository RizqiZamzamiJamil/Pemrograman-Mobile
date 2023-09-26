import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar 1 Kg',
        description:
            'Gula pasir yang berkualitas dan sudah terpercaya sejak tahun 2010',
        price: 20000,
        quantity: 4,
        image:
            'https://www.maxmartonline.com/images/thumbs/0006609_a-a-family-foods-white-sugar-1kg.jpeg'),
    Item(
        name: 'Salt 500 Gr',
        description:
            'Garam Cerebos merupakan garam yang berasal dari lautan lepas yang sudah melalui proses penetralan khusus',
        price: 50000,
        quantity: 2,
        image:
            'https://www.maxmartonline.com/images/thumbs/0001703_cerebos-iodised-table-salt-plastic-bag-500g_510.png'),
    Item(
        name: 'Butter 10 Gr',
        description:
            'Mentega Bebo merupakan best seller secara internasional sejak 2018',
        price: 10000,
        quantity: 2,
        image:
            'https://www.maxmartonline.com/images/thumbs/0010049_bebo-butterrich-reduced-fat-margarine-10g_510.jpeg'),
    Item(
        name: 'Cheese 70 Gr',
        description:
            'Keju manis andalan setiap keluarga. Populer sejak tahun 2007',
        price: 10000,
        quantity: 3,
        image:
            'https://ik.imagekit.io/dcjlghyytp1/13bdd468bd67dac197f1a8ee5072923d?tr=f-auto,w-360'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(flex: 3, child: Text('Items')),
                  Expanded(
                      child: Text(
                    'Unit',
                    textAlign: TextAlign.center,
                  )),
                  Expanded(
                      child: Text('Quantity', textAlign: TextAlign.center)),
                  Expanded(
                      child: Text(
                    'Total',
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final total = item.price * item.quantity;
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Text(
                                  item.name,
                                )),
                            Expanded(
                              child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Expanded(
                              child: Text(item.quantity.toString(),
                                  textAlign: TextAlign.center),
                            ),
                            Expanded(
                                child: Text(total.toString(),
                                    textAlign: TextAlign.end)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
