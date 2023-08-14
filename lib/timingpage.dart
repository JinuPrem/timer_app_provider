import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app_provider/provider.dart';
import 'package:timer_app_provider/utils.dart';
class TimingPage extends StatefulWidget {
  const TimingPage({Key? key}) : super(key: key);

  @override
  State<TimingPage> createState() => _TimingPageState();
}

class _TimingPageState extends State<TimingPage> {
  @override
  Widget build(BuildContext context) {

    final providerobject=Provider.of<ProviderTimer>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:selectedtimings.map((time) {
          return
          InkWell(
            onTap: () => providerobject.selecteTime(double.parse(time)),

            child: Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                height: 70,
                width: 50,
                decoration: int.parse(time)==providerobject.selectedTime
                ?BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ):BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: Colors.white, //                   <--- border color
                      width: 3.0,)),
                child: Center(child: Text(
                    (int.parse(time) ~/ 60).toString(),
                     style: TextStyle(fontSize: 25,color: int.parse(time)==providerobject.selectedTime?Colors.redAccent:Colors.white),)),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
