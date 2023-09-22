import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CircularSlider extends StatefulWidget {
  final void Function(double selectedValue) onValueSelected;

  const CircularSlider({required this.onValueSelected, Key? key}) : super(key: key);

  @override
  State<CircularSlider> createState() => _CircularSliderState();
}

class _CircularSliderState extends State<CircularSlider> {
  double _volumeValue = 30;
  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
      widget.onValueSelected(_volumeValue);
      print(_volumeValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final markerSize = screenWidth * 0.09;

    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 100,
          startAngle: 270,
          endAngle: 270,
          showLabels: false,
          showTicks: false,
          radiusFactor: 0.8,
          axisLineStyle: AxisLineStyle(
            cornerStyle: CornerStyle.bothFlat,
            color: Colors.black12,
            thickness: screenWidth * 0.04, // Responsive thickness
          ),
          pointers: <GaugePointer>[
            RangePointer(
              value: _volumeValue,
              cornerStyle: CornerStyle.bothFlat,
              width: screenWidth * 0.04, // Responsive width
              sizeUnit: GaugeSizeUnit.logicalPixel,
              color: Color(0xffd9886c),
            ),
            MarkerPointer(
              value: _volumeValue,
              enableDragging: true,
              onValueChanged: onVolumeChanged,
              markerHeight: markerSize,
              markerWidth: markerSize,
              markerType: MarkerType.circle,
              markerOffset: 0,
              color: Color(0xff322b27),
              borderWidth: screenWidth * 0.015, // Responsive border width
              borderColor: Color(0xfffab9a5),
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              angle: 90,
              axisValue: 5,
              positionFactor: screenWidth * 0.0025,
              widget: Column(
                children: [
                  Text(
                    "credit amount",
                    style: TextStyle(
                      fontSize: 12, // Responsive font size
                      color: Colors.grey,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '₹ ',
                          style: TextStyle(
                            fontSize: 25, // Responsive font size
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: (_volumeValue.ceil() * 1000)
                              .toString(), // Update the calculation here
                          style: TextStyle(
                            fontSize: 24, // Responsive font size
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "@1.04% monthly",
                    style: TextStyle(
                      fontSize: 12, // Responsive font size
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
