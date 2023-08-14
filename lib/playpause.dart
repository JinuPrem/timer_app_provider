import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app_provider/provider.dart';

class PlayPause extends StatefulWidget {
  const PlayPause({Key? key}) : super(key: key);

  @override
  State<PlayPause> createState() => _PlayPauseState();
}

class _PlayPauseState extends State<PlayPause> {
  @override
  Widget build(BuildContext context) {
    final providerobject = Provider.of<ProviderTimer>(context);

    return Container(
      width: 100,
      height: 200,
      decoration: const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: IconButton(onPressed: () {
        providerobject.timerPlay
        ?Provider.of<ProviderTimer>(context,listen: false).timerStop()
        :Provider.of<ProviderTimer>(context,listen: false).timerStart();

      },
          icon: providerobject.timerPlay?
          const Icon(Icons.pause)
      :const Icon(Icons.play_arrow_sharp),
      color: Colors.white,
      iconSize: 55,),
    );
  }
}
