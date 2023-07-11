//
//  ReusableProfileContents.swift
//  socialMedia11
//
//  Created by marwa awwad mohamed awwad on 11.07.2023.
//
import SwiftUI
import SDWebImageSwiftUI

struct ReusableProfileContents: View{
    var user: User
    var body: some View{
        ScrollView(.vertical,showsIndicators: false){
            LazyVStack{
                HStack(spacing: 12 ){
                    WebImage(url: user.profilePicURL  ).placeholder{
                        
                        
                        Image("Null profile")
                        
                            .resizable()
                    }
                    .resizable()
                    aspectRatio( contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text(user.userName )
                            .font(.title3)
                            .fontWeight( .semibold)
                    
                        
                       
                    }
                    
                    hAlign(.leading)
                    
                    Text("post's ")
                        .font(.title2)
                        .fontWeight( .semibold)
                        .foregroundColor( .black)
                        . hAlign(.leading )
                        .padding( .vertical ,15)
                }
            }
            
        }
    }
    
}
