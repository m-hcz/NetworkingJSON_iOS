//
//  VM_PostList.swift
//  NetworkingJSON
//
//  Created by M H on 29/12/2021.
//

import Foundation

class VM_PostList: ObservableObject {
	@Published var posts = [VM_Post]()
	
	init() {
		WebService().getPosts { posts in
			
			if let posts = posts {
				self.posts = posts.map(VM_Post.init)
			}
			
		} // get
	} // i
}

struct VM_Post {
	var post: Post
	var id: Int {return post.id}
	var title: String {return post.title}
	var description: String { return post.body}
	
	
	init(post: Post) {
		self.post = post
	} // i
}
