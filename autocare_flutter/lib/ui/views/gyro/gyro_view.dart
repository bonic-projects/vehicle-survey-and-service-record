import 'package:autocare_flutter/ui/views/widgets/reading_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'gyro_viewmodel.dart';

class GyroView extends StackedView<GyroViewModel> {
  const GyroView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GyroViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
            child: Column(children: [
          GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              ReadingCard(
                text: 'AcclX',
                value: viewModel.node!.aclX,
              ),
              ReadingCard(
                text: 'AcclY',
                value: viewModel.node!.aclY,
              ),
              ReadingCard(
                text: 'AcclZ',
                value: viewModel.node!.aclZ,
              ),
              ReadingCard(
                text: 'GyroX',
                value: viewModel.node!.gyroX,
              ),
              ReadingCard(
                text: 'GyroY',
                value: viewModel.node!.gyroY,
              ),
              ReadingCard(
                text: 'GyroZ',
                value: viewModel.node!.gyroZ,
              ),
              ReadingCard(
                text: 'Lat',
                value: viewModel.node!.lat,
              ),
              ReadingCard(
                text: 'Long',
                value: viewModel.node!.long,
              ),
              ReadingCard(
                text: 'Speed',
                value: viewModel.node!.speed,
              ),
              ReadingCard(
                text: 'Temp',
                value: viewModel.node!.temp,
              ),
            ],
          ),
        ])));
  }

  @override
  GyroViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GyroViewModel();
}
