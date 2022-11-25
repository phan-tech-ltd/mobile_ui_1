import 'package:flutter/material.dart';
import 'package:mobile_ui_1/src/pages/widgets/history_widget.dart';

class BalanceTab extends StatelessWidget {
  const BalanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
        children: [
          // balance container
          Container(
            height: 250,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '\$',
                      style: theme.textTheme.bodyLarge?.apply(color: theme.colorScheme.onBackground),
                      children: [
                        TextSpan(
                          text: '120,050',
                          style: theme.textTheme.headline3?.apply(color: theme.colorScheme.onBackground)
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(height: 15,),

                  // load
                  Container(
                    width: 110,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent.withOpacity(.65),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Load', style: TextStyle(color: Colors.white),),
                        SizedBox(width: 3,)
,                        Icon(Icons.add, color: Colors.white,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // history
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Align(alignment: Alignment.topLeft, child: Text('Transaction history', style: TextStyle(color: Colors.grey),)),
          ),

          const Expanded(
            child: HistoryWidget(),
          ),
          
        ],
      );
  }
}