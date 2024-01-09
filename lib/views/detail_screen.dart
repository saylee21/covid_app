import 'package:covid_app/widgets/reusable_row.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

  String image;
  String name;
  int totalCases, totalDeaths, totalRecovered, active, critical, todayRecovered, test ;
  DetailScreen({
    super.key,
    required this.name,
    required this.todayRecovered,
    required this.critical,
    required this.active,
    required this.image,
    required this.test,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.067, ),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Death', value: widget.totalDeaths.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Critical', value: widget.totalCases.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Cases', value: widget.critical.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
