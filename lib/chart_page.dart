import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProfitLossChart extends StatelessWidget {
  
  final netprofit;

  const ProfitLossChart({super.key,required this.netprofit});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
            titleMedium: TextStyle(color: Colors.black,),
          ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff29008e),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50.0, left: 20.0),
                child: Text(
                  'Profit-Loss Chart : ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: LineChart(LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 0),
                        FlSpot(2, 2),
                        FlSpot(3, 1),
                        FlSpot(6, 4),
                      ],
                      isCurved: false,
                      // dotdata used to show or hide dots
                      dotData: const FlDotData(show: true),
                      color: Colors.yellow,
                    ),
                  ],
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 6,
                  //backgroundColor: Colors.black,
                  titlesData: const FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      axisNameWidget: Text('Day',
                      style: TextStyle(color: Colors.white),),
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 35,
                      )
                    ),
                    leftTitles: AxisTitles(
                      axisNameWidget: Text('Profit',
                      style: TextStyle(color: Colors.white),),
                        sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 35,
                      )
                    ),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(
                    border: const Border(
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0,left: 40.0),
                child: Text(
                "Net Profit : $netprofit 2934",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}