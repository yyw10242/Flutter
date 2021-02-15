// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'dart:math' as math;

import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

class Sliderss extends StatefulWidget {
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliderss> {
  double _continuousValue = 25;
  double _discreteValue = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Semantics(
                label:
                    'GalleryLocalizations.of(context).demoSlidersEditableNumericalValue',
                child: SizedBox(
                  width: 64,
                  height: 48,
                  child: TextField(
                    textAlign: TextAlign.center,
                    onSubmitted: (value) {
                      final newValue = double.tryParse(value);
                      if (newValue != null && newValue != _continuousValue) {
                        setState(() {
                          _continuousValue = newValue.clamp(0, 100) as double;
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    controller: TextEditingController(
                      text: _continuousValue.toStringAsFixed(0),
                    ),
                  ),
                ),
              ),
              Slider(
                value: _continuousValue,
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    _continuousValue = value;
                  });
                },
              ),
              Text(
                  'GalleryLocalizations.of(context).demoSlidersContinuousWithEditableNumericalValue'),
            ],
          ),
          const SizedBox(height: 80),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider(
                value: _discreteValue,
                min: 0,
                max: 200,
                divisions: 5,
                label: _discreteValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _discreteValue = value;
                  });
                },
              ),
              Text('GalleryLocalizations.of(context).demoSlidersDiscrete'),
            ],
          ),
        ],
      ),
    );
  }
}
