//
//  LoginHttp.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class LoginHttp:HttpProtocol{
    var userName:String?
    var passWord:String?
    func POST(callBack:(Any) -> (),error:(String) -> ()){

        callBack(LoginData(userId: 10, userName: "abc", token: "73&dfdsj"))
        
    }
    
}
struct LoginData{
    var userId:Int?
    var userName:String?
    var token:String?
    
}
protocol HttpProtocol {
    
    func POST(callBack:(Any) -> (),error:(String) -> ())
}
