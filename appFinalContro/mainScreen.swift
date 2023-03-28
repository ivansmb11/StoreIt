import SwiftUI

struct mainScreen: View {
    let currentDate = Date()

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

            Spacer()

            VStack(spacing: 20) {
                Button(action: {
                    
                }) {
                    Text("Agregar")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    
                }) {
                    Text("Buscar")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top)

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


struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
