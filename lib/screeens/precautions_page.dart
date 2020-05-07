import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/screeens/causesList_page.dart';
import 'package:bmicaliculatorapp/screeens/precautionsList_page.dart';
import 'package:bmicaliculatorapp/screeens/risksList-page.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:flutter/material.dart';

class PrecautionsPage extends StatefulWidget {
  const PrecautionsPage({@required this.status});
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
        title: TextWidget(
            text: "$status Details",
            fontsize: SetSize().setFont(22),
            font: FontWeight.w500),
        elevation: 0.7,
        bottom: TabBar(
          // unselectedLabelColor: Colors.blue,
          //   labelColor: Colors.red,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              child: TextWidget(
                  text: "RISKS",
                  fontsize: SetSize().setFont(14),
                  font: FontWeight.bold),
            ),
            Tab(
              child: TextWidget(
                  text: "CAUSES",
                  fontsize: SetSize().setFont(14),
                  font: FontWeight.bold),
            ),
            Tab(
              child: TextWidget(
                  text: "PRECAUTIONS",
                  fontsize: SetSize().setFont(13.5),
                  font: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RisksListpage(
            status: status,
          ),
          CausesListpage(
            status: status,
          ),
          PrecautionsListpage(
            status: status,
          ),
        ],
      ),
    );
  }
}
