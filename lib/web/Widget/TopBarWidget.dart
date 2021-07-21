import 'package:flutter/material.dart';

class TopBarWidget extends StatefulWidget {
  final double opacity;
  TopBarWidget(this.opacity);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("algo"),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size(screenSize.width, 1000));
  }
}
