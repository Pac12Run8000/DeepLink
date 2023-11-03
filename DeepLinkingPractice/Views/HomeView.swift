import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Home")
                .navigationTitle("Home")
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(Color.red)
        }
    }
}
