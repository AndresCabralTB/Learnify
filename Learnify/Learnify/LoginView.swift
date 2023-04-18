//
//  LoginView.swift
//  Learnify
//
//  Created by Andres Cabral on 13/04/23.
//

import SwiftUI

let color2 = Color(red: 33.0/255.0, green: 150.0/255.0, blue: 243.0/255.0)
let color3 = Color(red: 161.0/255.0, green: 161.0/255.0, blue: 161.0/255.0)

var signupButton = Color.gray

struct LoginView: View {
    
    @State private var selection = 0
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var loginScreen = true
    
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                ZStack{
                    
                    Color(red: 161.0/255.0, green: 161.0/255.0, blue: 161.0/255.0)
                        .edgesIgnoringSafeArea(.all)
                        
                    
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading){
                                NavigationLink(destination: ContentView()){
                                    HStack{
                                        Image(systemName: "chevron.backward")
                                        Text("Back")
                                    }
                                }
                            }
                        }
                    
                    
                    
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(100)
                        .frame(height: 200, alignment: .bottom)
                        .colorMultiply(Color(red: 63.0/255.0, green: 158.0/255.0, blue: 225.0/255.0))
                    
                    
                    VStack{
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 210, height: 210)
                        
                            .padding()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .frame(width: 275, height: 400)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: 240, height: 40)
                                        .foregroundColor(Color.gray)
                                    
                                    HStack{
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 30)
                                                .fill(color1)
                                                .frame(width: 120, height: 40)
                                            
                                            Text("Log In")
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(-9)
                                        NavigationLink(destination: SignUp() ,
                                                       label: {
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 30)
                                                    .fill(Color.gray)
                                                    .frame(width: 120, height: 40)
                                                
                                                Text("Sign Up")
                                                    .foregroundColor(Color.white)
                                            }
                                        })
                                        
                                        
                                    }
                                    
                                }
                                .padding()
                                Text("Welcome to Learnify").font(.custom("San Fransico", size: 20).bold())
                                
                                
                                HStack{
                                    VStack{
                                        TextField("Username", text: $username)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                        TextField("Password", text: $password)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    .frame(width: 200)
                                    .padding(.horizontal, 20)
                                }
                                .padding(.vertical, 30)
                                
                                NavigationLink(
                                    destination: MainMenu().navigationBarBackButtonHidden(true), //Takes us to the tab file beacuse there is a tab view that displays all the other files, thus, that one is our bridge that contain the tab view
                                    label: {
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(color1)
                                                .frame(width: 200, height: 40)
                                            
                                            Text("Log in").font(.custom("Arial", size: 20)).foregroundColor(Color.white)
                                        }
                                    })
                                Text("Forgot Password?").font(.custom("San Fransico", size: 15))
                                
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

