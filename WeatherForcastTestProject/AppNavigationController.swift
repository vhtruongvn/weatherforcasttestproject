//
//  AppNavigationController.swift
//  WeatherForcastTestProject
//
//  Copyright © 2019 Buuuk. All rights reserved.
//

import UIKit

class AppNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barTintColor = .white
        
        let shadowImage = UIImage(named: "2px Line")?.stretchableImage(withLeftCapWidth: 0, topCapHeight: 0)
        navigationBar.shadowImage = shadowImage
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
