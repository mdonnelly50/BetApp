//
//  ProfileView.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI

struct ProfileView: View
{
    var body: some View
    {
        NavigationStack{
            
            
            VStack
            {
                Spacer().frame(height: 20)
                
                
                Divider()
                Spacer().frame(height: 25)
                
                VStack
                {
                    HStack
                    {
                        Image(systemName: "person.circle").font(.system(size: 100))
                        
                        Spacer().frame(width: 30)
                        
                        Text("0\nPosts").multilineTextAlignment(.center)
                        
                        Spacer().frame(width: 20)
                        
                        NavigationLink(destination: SearchView(), label: {
                            Text("0\nFollowers").multilineTextAlignment(.center)
                        })
                        
                        Spacer().frame(width: 20)
                        
                        NavigationLink(destination: SearchView(), label: {
                            Text("0\nFollowing").multilineTextAlignment(.center)
                        })
                    }
                    Text("Bio")
                  Rectangle().frame(width: 300, height: 50).foregroundColor(.white).border(Color.black).overlay{Text("Edit Profile")}
                    Spacer().frame(height: 35)
                    Text("Bets Won: 0 | Bets Made: 0").font(.system(size: 18))
                    Spacer().frame(height: 50)
                    HStack
                    {
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        
                    }
                    Spacer().frame(height: 20)
                    HStack
                    {
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        Image(systemName: "person.crop.rectangle").font(.system(size: 80))
                        
                    }
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                NavigationLink(destination: SettingView(), label: {
                    Image(systemName: "line.3.horizontal").font(.system(size: 30))
                })
                
            }
            Spacer()
        }
        
    }
}
#Preview {
    ProfileView()
}
