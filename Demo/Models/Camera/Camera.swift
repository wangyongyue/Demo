//
//  Camera.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class Camera:Vue,V_ViewControllerProtocol,POSTProtocol{
    
    func v_viewController() -> UIViewController{
        let vc = HomeViewController()
        vc.m = self
        vc.navigationItem.title = "home"
        return vc
        
    }
    
    override func v_start() {
        
        let params = GetHomeList()
        params.id = 10
        POST.request(params:params, http: self)
        
        self.v_index(vId: INDEXID) { (index) in
            print(index)
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        var array = [VueData]()
        for i in 1...12{
            let m = T1Model()
            m.name = "home"
            array.append(m)
        }
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}


