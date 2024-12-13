import SwiftUI


struct ContentView: View {
    @StateObject private var viewModel = HomeViewModel()
 
    var body: some View {
        VStack {
            Home()
                .environmentObject(viewModel)
                .background(
                    Color(
                        red: 0 / 255,
                        green: 1 / 255,
                        blue: 34 / 255,
                        opacity: 1)
                )
        }
    }
}
struct ContenttView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
