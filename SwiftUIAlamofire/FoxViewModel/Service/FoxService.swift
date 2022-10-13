//
//  FoxService.swift
//  SwiftUIAlamofire
//
//  Created by Fatih Toker on 13.10.2022.
//

import Foundation
import Alamofire

protocol IFoxService{
    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel, Bool) -> Void)
}

//https://randomfox.ca/floof/
class FoxService : IFoxService{

    private let baseURL : String = "https://randomfox.ca/"
    
    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel, Bool) -> Void){
        AF.request(baseURL + path.rawValue).responseDecodable(of: FoxModel.self, completionHandler: { response in
            guard let value = response.value else { return  }
            onSuccess(value, true)
        })
    }
}

enum FoxPaths : String{
    case floof = "floof"
    
}
