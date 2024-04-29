import 'package:flutter/material.dart';

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

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  List<IoTDevice> devices = [
    
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    IoTDevice(name: 'Device 1', status: 'Online', temperature: 25.0),
    IoTDevice(name: 'Device 2', status: 'Offline', temperature: 30.0),
    IoTDevice(name: 'Device 3', status: 'Online', temperature: 28.0),
    IoTDevice(name: 'Device 4', status: 'Online', temperature: 27.0),
    // Your IoTDevice list...
  ];

  IconData getIconForTemperature(double temperature) {
    if (temperature <= 20) {
      return Icons.ac_unit;
    } else if (temperature > 20 && temperature <= 25) {
      return Icons.wb_sunny;
    } else {
      return Icons.whatshot;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IoT Device Grid'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: PaginatedDataTable(
            header: const Text('IoT Devices'),
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Status',
                  style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Temperature',
                  style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                ),
              ),
            ],
            source: _DeviceDataSource(devices),
            rowsPerPage: 10, // Number of rows per page
          ),
        ),
      ),
    );
  }
}

class _DeviceDataSource extends DataTableSource {
  final List<IoTDevice> _devices;

  _DeviceDataSource(this._devices);

  IconData getIconForTemperature(double temperature) {
    if (temperature <= 20) {
      return Icons.ac_unit;
    } else if (temperature > 20 && temperature <= 25) {
      return Icons.wb_sunny;
    } else {
      return Icons.whatshot;
    }
  }

  @override
  DataRow? getRow(int index) {
    if (index >= _devices.length) {
      return null;
    }
    final device = _devices[index];
    return DataRow(cells: [
      DataCell(Text(device.name)),
      DataCell(Text(device.status)),
      DataCell(
        Row(
          children: [
            Icon(getIconForTemperature(device.temperature)),
            const SizedBox(width: 5),
            Text('${device.temperature} °C'),
          ],
        ),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _devices.length;

  @override
  int get selectedRowCount => 0;
}
