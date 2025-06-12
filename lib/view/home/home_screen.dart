import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Dashboard',
        actionIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active_outlined,
            color: AppColors.primaryColor,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: SfCircularChart(
                    legend: Legend(isVisible: true),
                    series: <RadialBarSeries<_TaskData, String>>[
                      RadialBarSeries<_TaskData, String>(
                        dataSource: getTaskData(),
                        xValueMapper: (_TaskData data, _) => data.task,
                        yValueMapper: (_TaskData data, _) => data.value,
                        pointColorMapper: (_TaskData data, _) => data.color,
                        dataLabelSettings: DataLabelSettings(
                          isVisible: false,

                          textStyle: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        cornerStyle: CornerStyle.bothCurve,
                        maximumValue: 100,
                      ),
                    ],
                  ),
                ),
                AppTextStyle.textBoldWeight700(text: 'Total\nEarning',textAlign: TextAlign.center,fontSize: 20.sp)
              ],
            )
          ],
        ),
      )
    );
  }
  List<_TaskData> getTaskData() {
    final List<_TaskData> chartData = [
      _TaskData('Tonu', 40, AppColors.primaryColor),
      _TaskData('Payroll Pending', 52, Colors.pinkAccent),
      _TaskData('Payroll Generated', 70, Colors.orangeAccent),
      _TaskData('Completed', 80, Colors.green),
    ];
    return chartData;
  }
}
class _TaskData {
  _TaskData(this.task, this.value, this.color);

  final String task;
  final double value;
  final Color color;
}




