import SwiftUI

struct SwiftUIDisclosureGroup: View {
    struct ToggleStates {
        var oneIsOne: Bool = false
        var twoIsOne: Bool = false
    }
    
    @State private var toggleStates: ToggleStates = ToggleStates()
    @State private var topExpanded: Bool = false
    
    var body: some View {
        VStack {
            DisclosureGroup("Items", isExpanded: $topExpanded) {
                Toggle("Toggle 1", isOn: $toggleStates.oneIsOne)
                Toggle("Toggle 2", isOn: $toggleStates.twoIsOne)
                DisclosureGroup("Sub-items") {
                    Text("Sub-item-1")
                }
            }
        }
        .padding()
    }
}

#Preview {
    SwiftUIDisclosureGroup()
}
