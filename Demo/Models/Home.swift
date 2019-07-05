//
//  Home.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Home:HomeProtocol{
    
    var arrayVue: Vue = Vue()
    var indexVue: Vue = Vue()
    
    static func getViewController(_ title:String?) -> UIViewController {
        
        let vc = HomeViewController()
        vc.m = Home()
        vc.navigationItem.title = title
        return vc
        
    }
    func startListen() {
        
        
        indexVue.v_index { (index) in
            print(index)
            
        }
        HomeHttp().POST(callBack: { (data) in
            
          dealData(data: data)
            
        }) { (error) in
            
        }
        
    }
    private func dealData(data:Any){
        
        let arr = data as! [HomeData]
        arrayVue.v_array(false, v: { () -> Array<VueData>? in
            var array = [VueData]()
            for value in arr{
                
                let m = T1Model()
                m.name = value.name
                array.append(m)
            }
            return array
        })
    }
    
    
    
}
