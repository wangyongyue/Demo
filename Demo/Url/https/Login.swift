//
//  Login.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class Login:HttpProtocol{
 
    var url:String = "/login"
    var userName:String?
    var password:String?
    func getPOSTBody() -> [String:Any]{
        
        var body = [String:Any]()
        body["userName"] = userName
        body["password"] = password        
        return body
    }
}
