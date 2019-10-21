//
//  MeTableViewController.swift
//  WX
//
//  Created by 郭鹏 on 2019/10/14.
//  Copyright © 2019 郭鹏. All rights reserved.
//

import UIKit

class MeTableViewController: UIViewController {

    
    var infoView: MeView = MeView.loadNib()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addView()
        
    }
    
    
    func addView(){
        
        view.addSubview(infoView)
        
        infoView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(88)
        }
        
    }
    
    
    


}
