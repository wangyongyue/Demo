//
//  Url.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol HttpProtocol {
    var url:String{get}
    func getPOSTBody() -> [String:Any]
}
//VCID
let ARRAYID = "ArrayID"
let INDEXID = "IndexID"
//http接口
let login = "/login"
