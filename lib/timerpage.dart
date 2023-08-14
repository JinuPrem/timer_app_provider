import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app_provider/card.dart';
import 'package:timer_app_provider/playpause.dart';
import 'package:timer_app_provider/provider.dart';
import 'package:timer_app_provider/timingpage.dart';
class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Timer',style: TextStyle(fontSize: 30),),
        actions: [
IconButton(onPressed:(){
  Provider.of<ProviderTimer>(context,listen: false).reset();

}, icon: const Icon(Icons.refresh,size: 30,))       ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
CardPage(),
            SizedBox(height: 20,),
            TimingPage(),
            SizedBox(height: 40,),
PlayPause(),
          ],
        ),
      ),
    );
  }
}
