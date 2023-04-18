//
//  DailyExercises.swift
//  Learnify
//
//  Created by Andres Cabral on 14/04/23.
//

import SwiftUI

struct DailyExercises: View {
    
    
    
    var body: some View {
        
        ScrollView{
            
            Text("These are the Daily Exercises")
            
        }.navigationBarTitle("Daily Exercises", displayMode: .inline)
        
    }
}
        

struct DailyExercises_Previews: PreviewProvider {
    static var previews: some View {
        DailyExercises()
    }
}
