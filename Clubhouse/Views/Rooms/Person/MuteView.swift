//
//  MuteView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 28/09/21.
//

import SwiftUI

struct MuteView: View {
    var body: some View {
        Image
            .mute
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint,
                    radius: 1,
                    x: 0,
                    y: 1)
            .foregroundColor(Color.black)
    }
}

struct MuteView_Previews: PreviewProvider {
    static var previews: some View {
        MuteView()
    }
}
