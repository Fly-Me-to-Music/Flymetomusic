//
//  Home.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 11.12.2024.
//

import SwiftUI
 
struct Detail: View {
    @EnvironmentObject var viewModel: HomeViewModel
    @EnvironmentObject var navManager: NavigationManager
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            ScrollView {
                VStack{
                    Button(action: {
                        //self.presentationMode.wrappedValue.dismiss()
                        navManager.navigate(to: Routes.gallery)
                          }) {
                              Text("go Gallery")
                                  .padding()
                                  .background(Color.blue)
                                  .foregroundColor(.white)
                                  .cornerRadius(8)
                          }
                    
                          .padding()
                          
                }.frame(width: 100, height: 100).background(Color.accentColor)
            }
         
        }
       
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

