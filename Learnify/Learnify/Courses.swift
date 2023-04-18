//
//  Courses.swift
//  Learnify
//
//  Created by Andres Cabral on 14/04/23.
//

import SwiftUI

var randomColor: [Color] = []

struct Courses: View{
    @State var rectangles = [Rectangle]()
    
    @State var rectangleName: [String] = []
    @State var enteredString = ""
    @State var isShowingAlert = false
    //@State var currentIndex = 0
    
    let rows = [
        GridItem(.fixed(180))
    ]
    
    var body: some View {
        
        ScrollView {
            
            VStack{
                HStack{
                    Text("Courses").font(.system(size: 40).bold())
                    Spacer()
                    Button(action: {
                        isShowingAlert = true
                        
                    }){
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                                .background(Color.clear)
                                .frame(width: 100, height: 30)
                            
                            Text("Add")
                                .font(.system(size: 15))
                                .foregroundColor(Color.blue)
                        }
                    }
                    .padding()
                    .alert("Course", isPresented: $isShowingAlert , actions:{
                        TextField("Cours Name", text: $enteredString)
                        
                        
                        Button("Enter", action: {
                            rectangleName.append(enteredString)
                            randomColor.append(Color(red: .random(in: 180...255)/255.0, green: .random(in: 180...255)/255.0, blue: .random(in: 180...255)/255.0))
                            rectangles.append(Rectangle())
                            isShowingAlert = false
                            enteredString = ""
                            
                        })
                        Button("Cancel", role: .cancel, action: {
                            
                            isShowingAlert = false
                        })
                        
                    }){Text("Enter the name of the course")
                        
                    }
                }
                Divider()
                LazyVGrid(columns: rows, spacing: 0){
                    ForEach(0..<rectangles.count, id: \.self){ number in
                        
                        ZStack{
                            NavigationLink(destination: TempView(),
                                           label: {
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(Color.black)
                                        .frame(width: 401, height: 51 )
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .frame(width: 400, height: 50 )
                                        .foregroundColor(randomColor[number])
                                        .padding(10)
                                    
                                    HStack{
                                        Text(rectangleName[number])
                                            .font(.title)
                                            .padding(20)
                                            .frame(width: 250, height: 50, alignment: .leading)
                                        
                                        Spacer()
                                        Image(systemName: "chevron.forward")
                                            .padding()
                                    }
                                }
                            })
                            .foregroundColor(Color.black)
                        }
                    }
                }
                //Spacer()
                //   Text(rectangleName[currentIndex])
            }
        }
        .navigationBarTitle("Course", displayMode: .inline)
        
    }
}

struct Courses_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    func random() -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}


