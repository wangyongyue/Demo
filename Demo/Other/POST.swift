//
//  POST.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class POST: NSObject {
    
    static func request(params:HttpProtocol,http:POSTProtocol){
        let url = params.url
        let body = params.getPOSTBody()
        print(url,body)
        http.POSTHttpWithData(http, "data")
    }
   

}
protocol POSTProtocol {
    
    func POSTHttpWithData(_ httP:POSTProtocol,_ data:Any)
    func POSTHttpWithError(_ httP:POSTProtocol,_ error:String)

}

