//
//  GetHomeList.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class GetHomeList:HttpProtocol{
    
    var url:String = "/HomeList"
    var userId:Int?
    var token:String?
    var id:Int?
    func getPOSTBody() -> [String:Any]{
        
        var body = [String:Any]()
        body["userId"] = userId
        body["token"] = token
        body["id"] = id

        return body
    }


}
