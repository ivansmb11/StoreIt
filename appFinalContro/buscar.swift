import SwiftUI

struct buscar: View {
    @State private var codigoRef = ""
    
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
                Text("Para encontrar un artículo ingresa su código de referencia:")
                
                VStack(alignment: .leading) {
                    Text("Código de referencia")
                        .bold()
                    TextField("Ingrese el código de referencia", text: $codigoRef)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                
                Button(action: {
                }) {
                    Text("Buscar")
                        .foregroundColor(.blue)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.5))
                        .cornerRadius(10)
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

struct buscar_Previews: PreviewProvider {
    static var previews: some View {
        buscar()
    }
}
