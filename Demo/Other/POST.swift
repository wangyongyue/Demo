//
//  POST.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class POST: NSObject {
    
    func request(url:String,body:[String:Any],http:POSTProtocol){
        
        http.POSTHttpWithData("data")
    }

   

}
protocol POSTProtocol {
    
    func POSTHttpWithData(_ data:Any)
    func POSTHttpWithError(_ error:String)

}

