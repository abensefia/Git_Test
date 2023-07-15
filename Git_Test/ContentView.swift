import SwiftUI

struct ContentView: View {
    @State private var isPresentingIsraaView = false
    @State private var isPresentingImanView = false
    @State private var isPresentingAsmaaView = false

    var body: some View {
        VStack {
            Button("Present Israa View") {
                isPresentingIsraaView = true
            }
            .sheet(isPresented: $isPresentingIsraaView) {
                IsraaView()
            }
            
            Button("Present Iman View") {
                isPresentingImanView = true
            }
            .sheet(isPresented: $isPresentingImanView) {
                ImanView()
            }
            
            Button("Present Asmaa View") {
                isPresentingAsmaaView = true
            }
            .sheet(isPresented: $isPresentingAsmaaView) {
                AsmaaView()
            }
        }
    }
}

struct IsraaaView: View {
    var body: some View {
        Text("Israa View")
    }
}

struct ImannView: View {
    var body: some View {
        Text("Iman View")
    }
}

struct AsmaaaView: View {
    var body: some View {
        Text("Asmaa View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
