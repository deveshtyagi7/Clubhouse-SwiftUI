//
//  ProfileHeaderView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 28/09/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    enum ProfileHeaderAction {
        case back
    }
    
    typealias ProfileHeaderActionHandler = (_ action : ProfileHeaderAction) -> Void
    
    let handler : ProfileHeaderActionHandler
    
    internal init(handler : @escaping ProfileHeaderView.ProfileHeaderActionHandler) {
        self.handler = handler
    }
    var body: some View {
        HStack(spacing: 28) {
            Button {
                handler(.back)
            } label: {
                Image.back
            }

          
            
            Spacer()
            
            Text("@")
            Image.gear
        }
        .font(Font.Nunito.bold(size: 24))
        .foregroundColor(Color.textBlack)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 15)
        
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView{_ in}
    }
}
