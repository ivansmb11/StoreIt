import SwiftUI

struct mainScreen: View {
    let currentDate = Date()

    var body: some View {
        NavigationView {
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
                    NavigationLink(destination: agregar()) {
                        VStack {
                            Text("Agregar")
                                .foregroundColor(.blue)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.5))
                                .cornerRadius(10)
                        }
                        .frame(height: 120)
                        .padding(.horizontal)
                        .navigationBarBackButtonHidden(true)
                    }

                    NavigationLink(destination: buscar()) {
                        VStack {
                            Text("Buscar")
                                .foregroundColor(.blue)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            Image(systemName: "magnifyingglass.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.5))
                                .cornerRadius(10)
                        }
                        .frame(height: 120)
                        .padding(.horizontal)
                        .padding(.top)
                        .navigationBarBackButtonHidden(true)
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
}


struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
