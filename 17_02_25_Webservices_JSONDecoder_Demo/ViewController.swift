//
//  ViewController.swift
//  17_02_25_Webservices_JSONDecoder_Demo
//
//  Created by Vishal Jagtap on 09/04/25.
//

import UIKit

class ViewController: UIViewController {

    var url : URL?
    var urlRequest : URLRequest?
    var urlSession : URLSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSettings()
        jsonParsingUsingDecoder()
    }
    
    private func initSettings(){
        url = URL(string: "https://reqres.in/api/users?page=2")
        urlRequest = URLRequest(url: url!)
        urlSession = URLSession(configuration: .default)
    }
    
    private func jsonParsingUsingDecoder(){
        let dataTask = urlSession?.dataTask(with: urlRequest!, completionHandler: { data, response, error in
        
            let jsonDecoder = JSONDecoder()
            let apiResponse = try! jsonDecoder.decode(APIResponse.self, from: data!)
            print(apiResponse)
        })
        dataTask?.resume()
    }
}
