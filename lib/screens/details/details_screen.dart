import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(),
    );
  }
}