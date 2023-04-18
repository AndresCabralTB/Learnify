//
//  TempView.swift
//  Learnify
//
//  Created by Andres Cabral on 17/04/23.
//

import SwiftUI

struct TempView: View {
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                Text("This view is only temporary. When this course is pressed it will allow the user to enter various sets of information about the course. Stay tuned!!!")
                Spacer()
            }
            
            
        }
        .navigationBarTitle("Temporary view", displayMode: .inline)
        
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
