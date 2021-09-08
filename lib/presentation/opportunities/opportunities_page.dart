import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpportunitiesPage extends StatefulWidget {
  const OpportunitiesPage({Key? key}) : super(key: key);

  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

//note: i have extended one more thing with this class   by using with AutomaticKeepAliveClientMixin
//to preserve the state
class _OpportunitiesPageState extends State<OpportunitiesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opportunities Page"),
        centerTitle: true, // align appbar title to center
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  //to preserve the state of page if you go to next page what state you leave will be preserved
  //if you don't want then make it false
  bool get wantKeepAlive => true;
}
