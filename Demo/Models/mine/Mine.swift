//
//  Mine.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class Mine:Vue,V_ViewControllerProtocol,POSTProtocol{
    
    var array = [VueData]()

    func v_viewController() -> UIViewController{
        let vc = ListViewController()
        vc.m = self
        vc.navigationItem.title = "我的"
        return vc
        
    }
    
    override func v_start() {
        
        let params = TestHttp()
        POST.request(params:params, http: self)
        
        self.v_index(vId: INDEXID) { (index) in
            Debug.log(index)
            
            if index == 4{
                
                Router.push(Setting(), nil, nil)
            }
            
        }
        
        self.v_if(vId: NAVBACKID) { () -> Bool? in
            
            return true
        }
        
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        
        let header = MineHeaderCellModel()
        header.name = "我的"
        
        let to1 = MineToCellModel()
        to1.name = "设置"
        
        let to2 = MineToCellModel()
        to2.name = "设置"
        
        let to3 = MineToCellModel()
        to3.name = "设置"
        
        let to4 = MineToCellModel()
        to4.name = "设置"
        
        array.append(header)
        array.append(to1)
        array.append(to2)
        array.append(to3)
        array.append(to4)

        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}


