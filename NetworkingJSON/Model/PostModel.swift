//
//  PostModel.swift
//  NetworkingJSON
//
//  Created by M H on 29/12/2021.
//

import Foundation

struct Post: Codable {
	let id: Int
	let title: String
	let body: String
}
