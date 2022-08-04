//
//  APIManager.swift
//  LoginWithAPIApp
//
//  Created by Varun Gupta on 01/08/22.
//

import Foundation
import Alamofire

class APIManager{
    static let shareInstance = APIManager()
    
    func callingRegisterApi(register: RegisterModel){
        let headers: HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request(register_url, method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: headers).response{
            response in debugPrint(response)
            
            switch response.result{
            case .success(let data):
                do{
                    //let json = JSONSerialization.jsonObject(with: data!, options: [])
                    print("success")
                }catch{
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    func callingLoginApi(register: RegisterModel) {
        let headers: HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request(login_url, method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: headers).response{
            response in debugPrint(response)
            
            switch response.result{
            case .success(let data):
                do{
                    //let json = JSONSerialization.jsonObject(with: data!, options: [])
                    print("logged in succesfully")
                }catch{
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
