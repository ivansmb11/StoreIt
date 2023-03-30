
import SwiftUI

struct splash: View {
    @State private var isActive = false
    @State private var size: CGFloat = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Image("imagen_almacen")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)
            VStack {
                Spacer()
                VStack {
                    Text("Store It")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 50))
                    Text("V 1.0")
                        .italic()
                        .bold()
                        .foregroundColor(.blue)
                        .font(.system(size: 30))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.5
                        self.opacity = 1.00
                    }
                }
                Spacer()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        .fullScreenCover(isPresented: $isActive, content: {
            ContentView()
        })
    }
}



struct splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()
    }
}
