//
//  MainViewController.swift
//  LastMileApp
//
//  Created by 윤병은 on 2023/02/03.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private let codingTestImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "lastMileImg1.png")
        return imageView
    }()
    
    private let reserveButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "lastMileImg2.png"), for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [codingTestImageView, reserveButton].forEach{
            view.addSubview($0)
        }

        codingTestImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide).multipliedBy(0.5)
            make.height.equalTo(view.safeAreaLayoutGuide).multipliedBy(0.25)
            make.width.equalTo(view.safeAreaLayoutGuide).multipliedBy(0.52)
        }
        
        reserveButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.top.equalTo(codingTestImageView.snp.bottom).inset(10)
        }
        
    }
    
}
