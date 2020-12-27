//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Andrej Kling on 27.12.20.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums : [DailyScrum]
    
    var body: some View {
        List {
            //  For now, because all of the scrums in the test data have different names, you can use the title property to identify each item...
          //  In the previous section, you used a key path to identify scrums by their titles. This approach worked for prototyping because each scrum in the sample data has a unique title. But users would experience issues if they tried to create a new scrum with the same title as an existing one.
            ForEach(scrums, id:\.title) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.color)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.data)
    }
}
