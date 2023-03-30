import SwiftUI

struct agregar: View {
    @State private var pieza = ""
    @State private var marca = ""
    @State private var modelo = ""
    @State private var año = ""
    @State private var codigo = ""
    @State private var ubicacion = ""
    @State private var showAlert = false

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(.gray)
                    .font(.system(size: 50))
                    .padding(.leading)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Jose Miguel Contro")
                        .font(.headline)
                    Text("Fecha")
                }
                .padding(.trailing)
            }
            .padding(.top)
            .background(Color.gray.opacity(0.2))

            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Pieza")
                    TextField("Ingrese la pieza", text: $pieza)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                VStack(alignment: .leading) {
                    Text("Marca")
                    TextField("Ingrese la marca", text: $marca)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                VStack(alignment: .leading) {
                    Text("Modelo")
                    TextField("Ingrese el modelo", text: $modelo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                VStack(alignment: .leading) {
                    Text("Año")
                    TextField("Ingrese el año", text: $año)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                VStack(alignment: .leading) {
                    Text("Código")
                    TextField("Ingrese el código", text: $codigo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                VStack(alignment: .leading) {
                    Text("Ubicación")
                    TextField("Ingrese la ubicación", text: $ubicacion)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                Button(action: {
                    self.showAlert = true
                }) {
                    Text("Enviar")
                        .foregroundColor(.blue)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.5))
                        .cornerRadius(10)
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Confirmar"), message: Text("¿Está seguro de enviar la información?"), primaryButton: .default(Text("Sí")) {
                        self.showAlert = false
                    }, secondaryButton: .cancel(Text("No")) {
                        self.showAlert = false
                    })
                }

                Spacer()

                HStack {
                    Image(systemName: "questionmark.circle.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 30))
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "power.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 30))
                        .padding(.trailing)
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

struct agregar_Previews: PreviewProvider {
    static var previews: some View {
        agregar()
    }
}
