import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isActive = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Usuario:")
                    .bold()
                    .font(.headline)
                TextField("Ingrese su nombre de usuario", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Contraseña:")
                    .bold()
                    .font(.headline)
                SecureField("Ingrese su contraseña", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: mainScreen()) {
                    Text("Iniciar sesión")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }


}
