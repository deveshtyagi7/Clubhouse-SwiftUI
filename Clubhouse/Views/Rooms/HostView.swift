//
//  HostView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 28/09/21.
//

import SwiftUI

struct HostView: View {
    
    let people : [Person]
    private let hostsColumns = [
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25)
    ]
    var body: some View {
        LazyVGrid(columns: hostsColumns,
                  alignment: .leading,
                  spacing: 10) {
            ForEach(people){ person in
                PersonView(person: person)
                
            }
        }
    }
}

struct HostView_Previews: PreviewProvider {
    static var previews: some View {
        HostView(people: FeedRoom.dummyData[0].hosts)
    }
}
