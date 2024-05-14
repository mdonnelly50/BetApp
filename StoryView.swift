//
//  StoryView.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI

struct StoryView: View {
    
    @State var stories: [String] = ["Mike", "Sara", "Bobby", "Abdul", "Ben", "Owen"]
    
    // computed Property
    var filteredStories: [String] {
        var myStories: [String] = []
        for story in stories {
            if story.contains("a") {
                myStories.append(story)
            }
        }
        return myStories
    }
    
//    init(isOnPage2: Bool) {
//
//    }
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(filteredStories, id: \.self) {
                    story in
                    Text("\(story)")
                        .foregroundStyle(.purple)
                }
            }
            .listStyle(.automatic)
            .navigationTitle("Stories")
            .toolbar(content: {
                Button(action: {
                    stories.append("Leena")
                }, label: {
                    Image(systemName: "plus")
                })
            })
        }
        
    }
}

#Preview {
    StoryView()
}
