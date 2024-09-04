import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class DynamicCircularProgressIndicator extends StatelessWidget {
  final double percentage;

  DynamicCircularProgressIndicator({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showAxisLine: false,
            showLabels: false,
            showTicks: false,
            startAngle: 270, // Start from 90 degrees
            endAngle: 270,
            // End at 90 degrees (full circle)
            minimum: 0,
            maximum: 100,
            canScaleToFit: true,
            radiusFactor: 0.7,
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Text(
                  '$percentage%',
                  style: getTextTheme().headlineLarge,
                ),
                angle: 90,
                positionFactor: 0.0,
              ),
            ],
            pointers: const <GaugePointer>[
              // RangePointer(
              //   value: 70.00,
              //   width: 40,
              //   color: Colors.blue,
              //   gradient: SweepGradient(
              //     colors: <Color>[Colors.blue, Colors.purple],
              //     stops: <double>[0.0, 1.0],
              //   ),
              //   enableAnimation: true,
              //   animationDuration: 1000,
              // ),
            ],
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: .5,
                  endValue: 9.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  gradient: percentage <= 10
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 10.5,
                  endValue: 19.5,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  gradient: percentage <= 20
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 20.5,
                  endValue: 29.5,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  gradient: percentage <= 30
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 30.5,
                  endValue: 39.5,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  gradient: percentage <= 40
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 40.5,
                  endValue: 49.5,
                  sizeUnit: GaugeSizeUnit.factor,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 50
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 50.5,
                  endValue: 59.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 60
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  sizeUnit: GaugeSizeUnit.factor,
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 60.5,
                  endValue: 69.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 70
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  sizeUnit: GaugeSizeUnit.factor,
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 70.5,
                  endValue: 79.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 80
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  sizeUnit: GaugeSizeUnit.factor,
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 80.5,
                  endValue: 89.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 90
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  sizeUnit: GaugeSizeUnit.factor,
                  color: ConstColors.shadowColor),
              GaugeRange(
                  startValue: 90.5,
                  endValue: 99.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  gradient: percentage <= 100
                      ? null
                      : SweepGradient(
                          colors: <Color>[Colors.blue, Colors.purple],
                          stops: <double>[0.0, 1.0],
                        ),
                  sizeUnit: GaugeSizeUnit.factor,
                  color: ConstColors.shadowColor),
            ]),
      ],
    );
  }
}
