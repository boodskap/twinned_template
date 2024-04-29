import 'package:flutter/material.dart';
import 'package:twinned_template/pages/home/card_view.dart';
import 'package:twinned_template/pages/home/page_datatable.dart';

class IoTDevice {
  final String name;
  final String status;
  final double temperature;

  IoTDevice({
    required this.name,
    required this.status,
    required this.temperature,
  });
}

enum ViewType { card, grid}

class HomePageView extends StatefulWidget {
  const HomePageView({
    super.key,
  });

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List<IoTDevice> devices = [
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 5', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 6', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 7', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 8', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 9', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 10', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 11', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 12', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 13', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 14', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 15', status: 'Online', temperature: 28.0),
  ];

  ViewType _viewType = ViewType.card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _viewType = ViewType.card;
                    });
                  },
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _viewType = ViewType.grid;
                    });
                  },
                  icon: const Icon(Icons.grid_view_rounded),
                ),
                // IconButton(
                //   onPressed: () {
                //     setState(() {
                //       _viewType = ViewType.settings;
                //     });
                //   },
                //   icon: const Icon(Icons.settings),
                // ),
              ],
            ),
            Expanded(
              child: _buildView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildView() {
    switch (_viewType) {
      case ViewType.card:
        return const Center(
          child: CardGridView()
        );
      case ViewType.grid:
        return DataTablePage(devices: devices);
      // case ViewType.settings:
      //   return const Center(
      //     child: Card(
      //       child: Padding(
      //         padding: EdgeInsets.all(16.0),
      //         child: Text('Settings Card'),
      //       ),
      //     ),
      //   );
    }
  }
}
