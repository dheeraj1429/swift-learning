import CoreBluetooth
import SwiftUI

class BluetoothViewModel: NSObject, ObservableObject, CBCentralManagerDelegate {
    private var centralManger: CBCentralManager?
    private var peripherals: [CBPeripheral] = []
    @Published var peripheralsName: [String] = []

    override init() {
        super.init()
        self.centralManger = CBCentralManager(delegate: self, queue: .main)
    }

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            self.centralManger?.scanForPeripherals(withServices: nil)
        }
    }

    func centralManager(
        _ central: CBCentralManager, didDiscover peripheral: CBPeripheral,
        advertisementData: [String: Any], rssi RSSI: NSNumber
    ) {
        if !peripherals.contains(peripheral) {
            self.peripherals.append(peripheral)
            self.peripheralsName.append(peripheral.name ?? "Unknown device")
        }
    }
}

struct ContentView: View {
    @ObservedObject private var bluetoothViewModel = BluetoothViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List(bluetoothViewModel.peripheralsName, id: \.self) { peripheral in
                    Text(peripheral)
                }
                .navigationTitle("Peripherals")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
