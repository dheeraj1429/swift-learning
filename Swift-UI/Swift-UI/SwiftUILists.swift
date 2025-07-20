import SwiftUI

struct SwiftUILists: View {
//    struct Ocean: Identifiable {
//        let name: String
//        let id = UUID()
//    }
//    
//    private let oceans = [
//        Ocean(name: "Pacific"),
//        Ocean(name: "Atlantic"),
//        Ocean(name: "Indian"),
//        Ocean(name: "Southern"),
//        Ocean(name: "Arctic")
//    ]
//    
//    var body: some View {
//        List(oceans) {
//            Text($0.name)
//        }
//    }
//-----
    
    struct Sea: Identifiable {
        let name: String
        let id = UUID()
    }
    
    struct OceanRegion: Identifiable {
        let name: String
        let seas: [Sea]
        let id = UUID()
    }
    
    private let oceanRegions: [OceanRegion] = [
        OceanRegion(name: "Pacific",
                    seas: [Sea(name: "Australasian Mediterranean"),
                           Sea(name: "Philippine"),
                           Sea(name: "Coral"),
                           Sea(name: "South China")]),
        OceanRegion(name: "Atlantic",
                    seas: [Sea(name: "American Mediterranean"),
                           Sea(name: "Sargasso"),
                           Sea(name: "Caribbean")]),
        OceanRegion(name: "Indian",
                    seas: [Sea(name: "Bay of Bengal")]),
        OceanRegion(name: "Southern",
                    seas: [Sea(name: "Weddell")]),
        OceanRegion(name: "Arctic",
                    seas: [Sea(name: "Greenland")])
    ]
    
    @State private var singleSelection: UUID?

    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection, content: {
                ForEach(oceanRegions) { region in
                    Section(header: Text("Major \(region.name) Ocean Seas")) {
                        ForEach(region.seas) { sea in
                            Text(sea.name)
                        }
                    }
                }
            })
        }   
        .navigationTitle("Oceans and Seas")
    }
}

#Preview {
    SwiftUILists()
}
