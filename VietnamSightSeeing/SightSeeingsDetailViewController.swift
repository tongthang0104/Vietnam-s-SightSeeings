//
//  SightSeeingsDetailViewController.swift
//  VietnamSightSeeing
//
//  Created by Thang H Tong on 10/14/15.
//  Copyright © 2015 Thang. All rights reserved.
//

import UIKit

class SightSeeingsDetailViewController: UIViewController {

    
    //MARK: Properties
    
    @IBOutlet weak var areaUpdate: UILabel!
    @IBOutlet weak var populationUpdate: UILabel!
    @IBOutlet weak var locationUpdated: UILabel!
    @IBOutlet weak var imageUpdate: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateWithSightSeeings (sightseeing: SightSeeings) {
        
        locationUpdated.text = sightseeing.location
        populationUpdate.text = "\(sightseeing.population) people"
        areaUpdate.text = "\(sightseeing.area) kilometer square"
        imageUpdate.image = UIImage (named: sightseeing.imageName)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

