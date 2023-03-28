//
//  splash.swift
//  appFinalContro
//
//  Created by ivan mendoza baca on 27/03/23.
//

import SwiftUI

struct splash: View {
    @State private var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    Text("Store It")
                        .font(.system(size: 30))
                    Text("V 1.0")
                        .italic()
                        .foregroundColor(.red)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.5
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()
    }
}
