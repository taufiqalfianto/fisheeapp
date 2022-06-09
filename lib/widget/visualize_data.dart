import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DataVisual extends StatelessWidget {
  final color;
  final String text;
  final double endvalue;
  const DataVisual(
      {Key? key,
      required this.color,
      required this.text,
      required this.endvalue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
      child: SfRadialGauge(
        axes: [
          RadialAxis(
            minimum: 0,
            maximum: 50,
            ranges: [
              GaugeRange(
                startValue: 0,
                endValue: endvalue,
                color: color,
                startWidth: 10,
                endWidth: 10,
              ),
            ],
            annotations: [
              GaugeAnnotation(
                widget: Container(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                positionFactor: 0.07,
              )
            ],
          ),
        ],
      ),
    );
  }
}
