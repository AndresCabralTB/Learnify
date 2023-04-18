//
//  ContentView.swift
//  Learnify
//
//  Created by Andres Cabral on 13/04/23.
//

import SwiftUI


let color1 = Color(red: 33.0/255.0, green: 150.0/255.0, blue: 243.0/255.0)


struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(){
                    Spacer()
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210, height: 210)
                    
                    Text("Welcome to the the online E-Learing App")
                        .font(.custom("San Fransico", size: 24).bold())
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 20)
                    Spacer()
                    NavigationLink( //Takes us to the new view
                        destination: LoginView().navigationBarBackButtonHidden(true),
                        label: { //Set the label that the navigation link has
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(color1)
                                    .frame(width: 250, height: 50)
                                
                                Text("Log in").font(.title).foregroundColor(Color.white)
                                
                            }
                        })
                    .padding()
                    HStack{
                        Text("Don´t have an account ?").font(.subheadline).foregroundColor(Color.white)
                        Text("Sign Up").font(.subheadline).underline().foregroundColor(Color.blue)
                    }
                    Spacer()
                }
                
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
        
}
