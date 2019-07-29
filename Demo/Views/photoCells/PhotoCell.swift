//
//  PhotoCell.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class PhotoCell: UICollectionViewCell {
    
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.white
        return label
    }()
    
    let tap = UITapGestureRecognizer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(headerLabel)
        self.contentView.addGestureRecognizer(tap)
        headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is PhotoCellModel{
            let m = aModel as! PhotoCellModel
            
            headerLabel.text = m.name
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
            
        }
    }
    
}
class PhotoCellModel:VueData{
    
    var name:String?
    
}



