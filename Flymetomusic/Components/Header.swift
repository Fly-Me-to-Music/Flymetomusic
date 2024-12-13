//
//  Home.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 11.12.2024.
//

import SwiftUI
 
struct Header: View {
    @State private var showAlert = false
    @EnvironmentObject var viewModel: HomeViewModel
    @State private var selectedTab: Int = 0
    @EnvironmentObject var navManager: NavigationManager
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    navManager.back()
                      }) {
                          Text("Back")
                              .padding()
                              .background(Color.blue)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                      }
                      .padding()
                      .alert(isPresented: $showAlert) {
                          Alert(title: Text("Merhaba"), message: Text("Button'a tıkladınız!"), dismissButton: .default(Text("Tamam")))
                      }
                Spacer()
                Button(action: {
                        navManager.popToPop()
                      }) {
                          Text("PopToPop")
                              .padding()
                              .background(Color.blue)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                      }
                      .padding()
                      .alert(isPresented: $showAlert) {
                          Alert(title: Text("Merhaba"), message: Text("Button'a tıkladınız!"), dismissButton: .default(Text("Tamam")))
                      }
                
                Spacer()
                
                VStack{
                    
                }.padding()
                    .background(Color.blue.opacity(0.9)) // Arka plan rengi
               
               
            }
            .padding()
            .background(Color.blue.opacity(0.1)) // Arka plan rengi
        }
       
    }
}



struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

