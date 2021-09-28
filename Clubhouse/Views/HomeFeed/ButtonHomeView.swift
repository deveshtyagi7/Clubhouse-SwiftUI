//
//  ButtonHomeView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 28/09/21.
//

import SwiftUI

struct ButtonHomeView: View {
    var body: some View {
        ZStack{
            
            Image
                .grid
                .font(Font.Nunito.bold(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing , 15)
            
            Button {
                //Start A Room Btn Functionality
            } label: {
                Label("Start a room", systemImage: "plus")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 9)
            .font(Font.Nunito.bold(size: 18))
            .foregroundColor(.white)
            .background(Color.customGreen)
            .cornerRadius(21 , antialiased: true)

            
        }
        .frame(maxWidth: .infinity,
               maxHeight: 105,
               alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.1),
                                                               Color.background]),
                                   startPoint: .top,
                                   endPoint: .bottom))
    }
}

struct ButtonHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonHomeView()
    }
}
