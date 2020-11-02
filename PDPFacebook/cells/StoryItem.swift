//
//  StoryItem.swift
//  PDPFacebook
//
//  Created by KHURSHIDBEK on 2020/11/01.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack{
            Image("ic_story").resizable().frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("ic_profile").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 5))
                Spacer()
                Text("Kurbanov").fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                Text("Khurshidbek").fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
            }.padding()
        }
        .frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
