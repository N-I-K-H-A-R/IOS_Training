//
//  Demo8.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

protocol ViewActionDelegate{
    var state: ViewState? { get }
    var userId: String? { get set }
    
    var errorHanlder: ((Error) -> Void)? { get set }
    
    func handle(action: ViewAction)
}


enum ViewState{
    case `default`
    case loading
}

enum ViewAction{
    case save
    case cancel
}

extension ViewActionDelegate{
    var isReadyForNextAction: Bool {
        return state != .loading
    }
}

class ActionController {
    var state: ViewState = .default
    var userId: String?
    var errorHandler: ((Error) -> Void)?
}

extension ActionController : ViewActionDelegate {
    var state: ViewState? {
        <#code#>
    }
    
    var errorHanlder: ((Error) -> Void)? {
        get {
            <#code#>
        }
        set {
            <#code#>
        }
    }
    
    func handle(action: ViewAction) {
        switch action {
        case .save:
            break
        case .cancel:
            break
            
        }
    }
    
  
}
