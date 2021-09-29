//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 27/09/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
    enum HomeHeaderActions {
        case profile
    }
    
    typealias HomeHeaderActionHandler = (_ action : HomeHeaderActions) -> Void
    
    let handler : HomeHeaderActionHandler
    
    init(handler : @escaping HomeHeaderView.HomeHeaderActionHandler){
        
        self.handler = handler
    }
    
    var body: some View {
        HStack(spacing : 22){
            Image.search
            Spacer()
            Image.invite
            Image.calendar
            Image.notificationBell
            Button {
                handler(.profile)
            } label: {
                Image.profile_pic
                    .resizable()
                    .frame(width: 32, height: 32)
                    .cornerRadius(11)
            }

            
            
        }
        .font(Font.Nunito.bold(size: 28))
        .foregroundColor(Color.textBlack)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.horizontal , 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView{ _  in}
            .previewLayout(.sizeThatFits)
    }
}
