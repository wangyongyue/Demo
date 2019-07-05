//
//  HomeHttp.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class HomeHttp {

    func POST(callBack:(Any) -> (),error:(String) -> ()){
        
        var array = [HomeData]()
        for i in 1...10{
            
            array.append(HomeData(name: "home\(i)"))
        }
        callBack(array)
    }
}
struct HomeData {
    var name:String?
}
