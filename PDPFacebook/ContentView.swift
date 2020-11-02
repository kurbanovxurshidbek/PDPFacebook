//
//  ContentView.swift
//  PDPFacebook
//
//  Created by KHURSHIDBEK on 2020/11/01.
//

import SwiftUI

// option + command + right(->) / left(<-)

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                // live, photo, room
                VStack{
                    HStack{
                        Image("ic_profile").resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What`s on your mind?").font(.system(size: 17))
                    }.frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    
                    HStack{}.frame(height: 1).frame(maxWidth:.infinity).background(Color.gray.opacity(0.3))
                    
                    HStack{
                        Spacer()
                        HStack{
                            Image("ic_live")
                            Text("Live")
                        }
                        Spacer()
                        HStack{
                            Image("ic_photo")
                            Text("Photo")
                        }
                        Spacer()
                        HStack{
                            Image("ic_room")
                            Text("Room")
                        }
                        Spacer()
                    }.frame(height: 50)
                }

                // create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }.frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 10)
                }
                
                // create story
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                // post items
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    PostItem(img_url: "ic_post1")
                    PostItem(img_url: "ic_post2")
                }
                
                
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue)
                ,
                trailing: HStack{
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_search")
                    }
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_sender")
                    }
      
                })
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
