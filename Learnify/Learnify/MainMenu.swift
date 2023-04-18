//
//  MainMenu.swift
//  Learnify
//
//  Created by Andres Cabral on 14/04/23.
//

import SwiftUI

struct MainMenu: View {
    
    @State private var alertButton = false
    @State private var setNameAlert = false
    //@State private var dianaBool = false
    
    @State private var buttonTitle = "Student Name"
    
    
    @State var rectangles = [Rectangle]()
    
    private let fixedColumns = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180)),
    ]
    
    var body: some View {
        
        TabView{
            
            NavigationView{ //We have to wrap it in a navigation stack becuase there are multiple navigationlinks
                
                
                ScrollView{ //allows the screen to be scrollable
                    
                    ZStack{
                        
                        VStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                                    .frame(width: 450, height: 50)
                                    .navigationTitle("Learnify")
                                
                                HStack{
                                    Button(action: {
                                        alertButton = true //Activate alert screen
                                        
                                    }){
                                        Text(buttonTitle)
                                            .font(.system(size: 23).bold())
                                            .foregroundColor(Color.black)
                                        
                                    }
                                    .alert("Student Name", isPresented: $alertButton, actions:{ //This alert will activate when alertButton is true
                                        TextField("Studen Name", text: $buttonTitle)
                                        
                                        
                                        Button("Enter", action: {alertButton = false //Closes alert screen
                                            
                                          /*  if buttonTitle == "Diana Maria Juarez Polo"{
                                                dianaBool = true
                                            } else{
                                                dianaBool = false
                                            } */
                                        })
                                        Button("Cancel", role: .cancel, action: { //Closes alert screen and cancels the action
                                            
                                            buttonTitle = "Student Name"
                                            alertButton = false
                                        })
                                        
                                    })
                                  /*  if dianaBool{
                                            NavigationLink(destination: Diana(), label: {
                                                Text("Click me")
                                            })
                                    } else{
                                        
                                    } */
                                }
                                
                            }
                            Spacer().padding(.vertical, 1)
                            
                            /*       HStack{   ---------> Button that adds cards
                             Spacer()
                             Button(action: { //ADD BUTTON!!!!
                             setNameAlert = true
                             rectangles.append(Rectangle())
                             
                             }){
                             Image(systemName: "plus.circle")
                             .foregroundColor(Color.black)
                             
                             }
                             
                             
                             } */
                            
                                .padding(.trailing, 50)
                            
                            HStack{
                                
                                Spacer().padding(.horizontal, 20)
                                NavigationLink(destination: DailyExercises(), label: {
                                    
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 2) //Sets the outline of the rectangle
                                            .background(Color.black)
                                            .frame(width: 150, height: 200)
                                        
                                        Image("DailyExercises")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .opacity(0.5)
                                        
                                        Text("Daily Exercises")
                                            .font(.system(size: 27).bold())
                                            .foregroundColor(Color.white)
                                        
                                        
                                    }
                                }) //End of navigation link
                                
                                Spacer().padding(.horizontal, 2)
                                NavigationLink(destination: StudyMethods()
                                               , label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 2)
                                            .background(Color.black)
                                            .frame(width: 150, height: 200)
                                        
                                        Image("StudyMethods")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .opacity(0.5)
                                        
                                        Text("Study Methods")
                                            .font(.system(size: 27).bold())
                                            .foregroundColor(Color.white)
                                    }
                                    
                                })
                                Spacer().padding(.horizontal, 20)
                            }
                            
                            .padding(.vertical, 20)
                            
                            HStack{
                                Spacer().padding(.horizontal, 20)
                                NavigationLink(destination: Courses(), label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 2)
                                            .background(Color.black)
                                            .frame(width: 150, height: 200)
                                        
                                        Image("Book")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .opacity(0.5)
                                        
                                        Text("Courses")
                                            .font(.system(size: 27).bold())
                                            .foregroundColor(Color.white)
                                        
                                        // Image("Course")
                                        
                                        
                                        
                                    }
                                })
                                Spacer().padding(.horizontal, 3)
                                
                                NavigationLink(destination: Social(), label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.black, lineWidth: 2)
                                            .background(Color.black)
                                            .frame(width: 150, height: 200)
                                        
                                        Image("Social2")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .opacity(0.5)
                                        
                                        Text("Social")
                                            .font(.system(size: 27).bold())
                                            .foregroundColor(Color.white)
                                    }
                                })
                                
                                Spacer().padding(.horizontal, 20)
                            }
                            
                            
                            /*   LazyVGrid(columns: fixedColumns, spacing: 20){
                             ForEach(0..<rectangles.count, id: \.self){ number in
                             HStack{
                             
                             ZStack{
                             RoundedRectangle(cornerRadius: 5)
                             .stroke(Color.black, lineWidth: 2)
                             .frame(width: 150, height: 200 )
                             .foregroundColor(Color.white)
                             .padding(9)
                             
                             
                             Text("Card")
                             .font(.system(size: 27).bold())
                             .foregroundColor(Color.black)
                             }
                             }
                             }
                             
                             } */
                            
                        }
                        
                    } //All my contetn
                }//back bar dosnt appear anymore
                
            }
            
            .tabItem{
                Text("Home")
                Image(systemName: "house")
            }
            Settings()
                .tabItem(){
                    Text("Settings")
                    Image(systemName: "gear")
                }
        }
        
    }
}
    struct MainMenu_Previews: PreviewProvider {
        static var previews: some View {
           ContentView()
                
        }
    }


