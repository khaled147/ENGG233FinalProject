class SensorDataProvider {
  String filePath = "";
  Table dataTable;
  int currentIndex = 0;

  void initialize(String filePathName) {
    filePath = filePathName;
    dataTable = loadTable(filePath, "header");
  }

  void readNext() {
    if (currentIndex < dataTable.getRowCount())
      currentIndex++;
  }

  float readRPM() {
    TableRow row = dataTable.getRow(currentIndex);
    return row.getFloat("RPM");
  }

  float readFuelLevel() {
    TableRow row = dataTable.getRow(currentIndex);
    return row.getFloat("Fuel Level (liter)");
  }

  float readRatio() {
    TableRow row = dataTable.getRow(currentIndex);
    return row.getFloat("Gear Ratio");
  }

  float readX() {
    TableRow row = dataTable.getRow(currentIndex);
    return row.getFloat("X");
  }

  float readY() {
    TableRow row = dataTable.getRow(currentIndex);
    return row.getFloat("Y");
  }
}
