//
//  T1Cell.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class T1Cell: UITableViewCell ,CellProtocol{
    
    let label:UILabel = {
        let a = UILabel()
        return a
    }()
    
    let tap = UITapGestureRecognizer()
    var textVue = Vue()
    var tapVue = Vue()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        
        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(44)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(30)
            make.bottom.equalTo(0)
            
        }
        label.v_text(vue: textVue)
        tap.v_on(vue: tapVue)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func setModel(_ amodel: VueData) {
        
        if amodel is T1Model{
            
            let h = amodel as! T1Model
            textVue.v_text { () -> String? in
                return h.name
            }
            tapVue.v_on {
                h.v_selectVue.v_on?()
            }
        }
    }
    
}
class T1Model: VueData{
    
    
    var v_palm: String = "T1Cell"
    var v_identifier:Int = 0
    var v_selectVue:Vue = Vue()



    var name:String?

}


