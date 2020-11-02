//
//  PostItem.swift
//  PDPFacebook
//
//  Created by KHURSHIDBEK on 2020/11/01.
//

import SwiftUI

struct PostItem: View {
    var img_url = "ic_post1"
    
    var body: some View {
        VStack{
            // header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("ic_profile").resizable().frame(width: 50, height: 50).cornerRadius(25)
                    ZStack{
                        Circle().frame(width: 22, height: 22).foregroundColor(.white)
                        Circle().frame(width: 16, height: 16).foregroundColor(.green)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Khurshidbek").fontWeight(.bold)
                    HStack{
                        Text("18m")
                        Image("ic_public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image("ic_more")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            // image
            Image(img_url).resizable().scaledToFit()
            
            // like, love, counts for comment and share
            HStack(spacing: 5){
                HStack(spacing: -5){
                    Image("ic_fb_like").resizable().frame(width: 20, height: 20)
                    Image("ic_fb_love").resizable().frame(width: 20, height: 20)
                }
                Text("8.4K")
                Spacer()
                Text("240 Comments")
                Text("54 Shares")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            HStack{}.frame(height: 0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top,5)
            
            HStack{
                Spacer()
                HStack{
                    Image("ic_fb_liked")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image("ic_fb_comment")
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image("ic_fb_share")
                    Text("Share")
                }
                Spacer()
            }.frame(height: 40).padding(.top,5)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
            
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
