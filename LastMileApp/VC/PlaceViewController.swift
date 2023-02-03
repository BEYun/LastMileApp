//
//  PlaceViewController.swift
//  LastMileApp
//
//  Created by 윤병은 on 2023/02/03.
//

import UIKit
import NMapsMap

class PlaceViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        
    }
    

}
