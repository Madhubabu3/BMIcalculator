import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/screeens/causesList_page.dart';
import 'package:bmicaliculatorapp/screeens/precautionsList_page.dart';
import 'package:bmicaliculatorapp/screeens/risksList-page.dart';
import 'package:flutter/material.dart';

class PrecautionsPage extends StatefulWidget {
 const PrecautionsPage({ @required this.status});
  final String status;
  @override
  PrecautionsState createState() => PrecautionsState(status: status);
}

class PrecautionsState extends State<PrecautionsPage>
    with SingleTickerProviderStateMixin {
      PrecautionsState({@required this.status});
        final String status;

  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$status Deatils",
          textAlign: TextAlign.center,
          style: KBtnTextStyle,
        ),
        elevation: 0.7,
        bottom: TabBar(
          unselectedLabelColor: Colors.blue,
            labelColor: Colors.red,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              child: Text("RISKS", style: KTabKeyStyle),
            ),
            Tab(
              child: Text("CAUSES", style: KTabKeyStyle),
            ),
            Tab(
              child: Text("PRECAUTION", style: KTabKeyStyle),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RisksListpage(),
          CausesListpage(),
          PrecautionsListpage(),
        ],
      ),
    );
  }
}
