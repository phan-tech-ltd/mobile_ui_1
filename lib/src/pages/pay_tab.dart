import 'package:flutter/material.dart';

class PayTab extends StatefulWidget {
  const PayTab({super.key});

  @override
  State<PayTab> createState() => _PayTabState();
}

class _PayTabState extends State<PayTab> {
  late final PageController promoController;

  @override
  void initState() {
    super.initState();
    promoController = PageController(viewportFraction: .85);
  }

  @override
  void dispose() {
    promoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        // bg
        Container(
          height: 140,
          width: double.infinity,
          color: theme.primaryColor,
        ),
        // body
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text('Pay', style: theme.textTheme.titleLarge?.apply(color: Colors.white, fontSizeFactor: 1.3),),
            ),
            

            // promos
            SizedBox(
              // width: 300,
              height: 140,
              child: PageView.builder(
                controller: promoController,
                itemCount: 3,
                itemBuilder: (_, index){
                  return Card(
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Cashback\non any Payment!\n',
                          style: theme.textTheme.headline6?.apply(color: theme.primaryColorDark),
                          children: [
                            TextSpan(
                              text: 'Promocode: \t', children: [TextSpan(text: 'ES${index+1}0', style: const TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),],
                              style: theme.textTheme.bodyLarge?.apply(color: theme.primaryColorDark)
                            ),
                            
                          ]
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),

            // pay items
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  for(var item in payItems)
                  Card(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(item.iconData, color: item.iconColor, size: 37,),
                          const SizedBox(height: 5,),
                          Text(item.label),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  List<PayItem> payItems = [
    PayItem(label: 'Mobile', iconData: Icons.mobile_screen_share, iconColor: Colors.pink),
    PayItem(label: 'Landline', iconData: Icons.call_end, iconColor: Colors.blueAccent),
    PayItem(label: 'Data Card', iconData: Icons.usb_outlined, iconColor: Colors.purple),
    PayItem(label: 'Internet', iconData: Icons.wifi, iconColor: Colors.lightBlue),
    PayItem(label: 'Cable Tv', iconData: Icons.live_tv, iconColor: Colors.blueGrey),
    PayItem(label: 'Entertainment', iconData: Icons.video_library, iconColor: Colors.redAccent),
    PayItem(label: 'Electric', iconData: Icons.lightbulb, iconColor: Colors.amber),
    PayItem(label: 'School', iconData: Icons.menu_book, iconColor: Colors.deepOrangeAccent),
    PayItem(label: 'Church', iconData: Icons.church, iconColor: Colors.cyanAccent),
    // PayItem(label: 'Donation', iconData: , iconColor: Colors.pinkAccent),
    PayItem(label: 'Merchants', iconData: Icons.shopping_basket, iconColor: Colors.purpleAccent),
    PayItem(label: 'Utility', iconData: Icons.settings, iconColor: Colors.blueAccent),
  ];
}

class PayItem{
  PayItem({required this.label, required this.iconData, this.iconColor, this.onTap});
  final String label;
  final IconData iconData;
  final Color? iconColor;
  Function()? onTap;
}

List<PayItem> payItems = [

];