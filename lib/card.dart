import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app_provider/provider.dart';
class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  @override
  Widget build(BuildContext context) {

    final cardobject=Provider.of<ProviderTimer>(context);
    final seconds=cardobject.currentDuration%60;

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text('FOCUS',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(child: SizedBox(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/2,
              child: Card(
                elevation: 25,
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text((cardobject.currentDuration~/60).toString(),style: const TextStyle(fontSize: 50,color: Colors.black),)),
              ),
            )),
            const Text(":",style: TextStyle(fontSize: 80,color: Colors.white)),

            Expanded(child: SizedBox(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/2,
              child: Card(
                elevation: 25,
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text(seconds==0?"${seconds.round()}0":(seconds.round()).toString(),style: const TextStyle(fontSize: 50,color: Colors.black),)),
              ),
            ))

          ],
        )
      ],
    );
  }
}
