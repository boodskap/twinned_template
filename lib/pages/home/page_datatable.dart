import 'package:flutter/material.dart';
import 'package:twinned_template/pages/home/page_homescreen.dart';

class DataTablePage extends StatelessWidget {
  final List<IoTDevice> devices;

  const DataTablePage({Key? key, required this.devices}) : super(key: key);

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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: PaginatedDataTable(
          header: const Text('IoT Devices'),
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Status',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Temperature',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          source: _DeviceDataSource(devices),
          rowsPerPage: 5,
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
