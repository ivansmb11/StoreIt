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
                
                Button(action: {
                    self.isActive = true
                }) {
                    Text("Restablecer contraseña")
                        .italic()
                        .font(.system(size: 15))
                        .foregroundColor(.blue)
                }
                .sheet(isPresented: $isActive) {
                    ResetPasswordView()
                }
                
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

struct ResetPasswordView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                
                HStack {
                    Text("Para restablecer tu contraseña, por favor contacta a la persona de la tarjeta a continuación:")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Nombre:")
                        .font(.headline)
                    Text("Jose Miguel Contro")
                        .font(.subheadline)
                    Text("Teléfono:")
                        .font(.headline)
                    Text("+52 (442) 247-4850")
                        .font(.subheadline)
                    Text("Departamento:")
                        .font(.headline)
                    Text("Informática")
                        .font(.subheadline)
                    Text("Correo electrónico:")
                        .font(.headline)
                    Text("jose.contro04@anahuac.mx")
                        .font(.subheadline)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                Image(systemName: "cube.box")
                    .font(.system(size: 30))
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
            }
            .padding()
            .navigationBarTitle(Text("Restablecer contraseña"), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .foregroundColor(.blue)
                Text("Atrás")
                    .foregroundColor(.blue)
            })
        }
    }
}









