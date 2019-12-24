//
//  ForecastViewController.swift
//  WeatherForcastTestProject
//
//  Copyright © 2019 Buuuk. All rights reserved.
//

import UIKit

class ForecastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Forecast"

        configureTabBarItem()
    }
    
    func configureTabBarItem() {
        let tabBarItemImage = UIImage(named: "25x25 Forecast Inactive (Tab)")?.withRenderingMode(.alwaysOriginal)
        let tabBarItemSelectedImage = UIImage(named: "25x25 Forecast Active (Tab)")?.withRenderingMode(.alwaysOriginal)
        tabBarItem = UITabBarItem(title: "Forecast",
                                  image: tabBarItemImage,
                                  selectedImage: tabBarItemSelectedImage)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
