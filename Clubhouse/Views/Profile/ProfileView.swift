//
//  ProfileView.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 28/09/21.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    private let profilePicSize: CGFloat = 76
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                ProfileHeaderView{ action  in
                    
                    switch action{
                    case .back:
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                }
                
                Group{
                    Image.profile_pic
                        .resizable()
                        .frame(width: profilePicSize,
                               height: profilePicSize)
                        .cornerRadius(30)
                    
                    Text("Devesh Tyagi")
                        .font(Font.Nunito.bold(size: 16))
                    Text("@deveshtyagi7")
                        .font(Font.Nunito.bold(size: 12))
                        .padding(.top, 1)
                    // Following and Follower Stack
                    HStack{
                        HStack(spacing : 0){
                            Text("112")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            
                            Text("followers")
                                .font(Font.Nunito.semiBold(size: 12))
                                
                        }
                        .padding(.trailing, 30)
                        
                        HStack(spacing : 0){
                            Text("21")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            
                            Text("following")
                                .font(Font.Nunito.semiBold(size: 12))
                        }
                        .padding(.trailing, 30)
                    }
                    .padding(.top, 15)
                    
                    //Bio
                    Text("iOS Developer \n \nhttps://www.instagram.com/deveshtyagi7/")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 14))
                    
                    HStack(alignment: .top) {
                        Image("person_0")
                            .resizable()
                            .frame(width: 38, height: 38)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading) {
                            Text("Joined 26 Dec 2020")
                                .font(Font.Nunito.regular(size: 12))
                            
                            Text("Nominated by ")
                                .font(Font.Nunito.regular(size: 12)) +
                            
                            Text("Dev")
                                .font(Font.Nunito.bold(size: 12))
                            
                        }
                    }
                }
                .foregroundColor(Color.textBlack)
                .padding(.horizontal, 15)
                Spacer()
            }
            .padding(.top, 65)
            
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
