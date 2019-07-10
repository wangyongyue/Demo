//
//  Home.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Home:HomeProtocol,POSTProtocol{
    
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
        
        POST().request(url:"",body:["id":1],http: self)
    }
    
    func POSTHttpWithData(_ data:Any){
        
        arrayVue.v_array(false) { () -> Array<VueData>? in
            var array = [VueData]()
            for i in 1...12{
                let m = T1Model()
                m.name = "sd"
                array.append(m)
            }
            return array
        }
    }
    func POSTHttpWithError(_ error:String){
        
                
    }
   
    
    
    
    
}
