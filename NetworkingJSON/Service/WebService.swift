//
//  WebService.swift
//  NetworkingJSON
//
//  Created by M H on 29/12/2021.
//

import Foundation

class WebService {
	
	func getPosts(completion: @escaping ([Post]?) -> ()){
		guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
			fatalError("Invalid url")
		}
		
		URLSession.shared.dataTask(with: url) {data, response, error in
			guard let data = data, error == nil else {
				
				DispatchQueue.main.async {
					completion(nil)
				}
				
				return
			}
			
			let posts = try? JSONDecoder().decode([Post].self, from: data)
			
			DispatchQueue.main.async {
				completion(posts)
			}
			
			
			
		}.resume()
		
		
		
	}
}
