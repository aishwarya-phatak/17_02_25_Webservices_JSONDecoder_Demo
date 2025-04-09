//
//  User.swift
//  17_02_25_Webservices_JSONDecoder_Demo
//
//  Created by Vishal Jagtap on 09/04/25.
//

struct User : Decodable{
    var id : Int
    var email : String?
    var first_name : String?
    var last_name : String
    var avatar : String
}
