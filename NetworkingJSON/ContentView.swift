//
//  ContentView.swift
//  NetworkingJSON
//
//  Created by M H on 29/12/2021.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject private var postList = VM_PostList()
	
    var body: some View {
		List(self.postList.posts, id: \.id){ post in
			VStack(alignment: .leading) {
				Text(post.title)
					.font(.title2)
				Text(post.description)
			} // v
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
