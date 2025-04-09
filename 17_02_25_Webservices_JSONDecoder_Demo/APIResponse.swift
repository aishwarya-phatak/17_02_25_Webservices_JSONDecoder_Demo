//
//  APIResponse.swift
//  17_02_25_Webservices_JSONDecoder_Demo
//
//  Created by Vishal Jagtap on 09/04/25.
//

struct APIResponse : Decodable{
    var page : Int
    var per_page : Int
    var total : Int
    var total_pages : Int
    var data : [User]
    var support : Support
}
