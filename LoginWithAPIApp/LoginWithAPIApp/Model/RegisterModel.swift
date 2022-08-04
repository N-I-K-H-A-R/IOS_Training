//
//  RegisterModel.swift
//  LoginWithAPIApp
//
//  Created by Varun Gupta on 01/08/22.
//

import Foundation

struct RegisterModel : Encodable{
    let name: String;
    let email: String;
    let password: String;
}
