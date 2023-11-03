import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Text("Profile")
                .navigationTitle("Profile")
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(Color.blue)
        }
    }
        
}
