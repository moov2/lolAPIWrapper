//
//  ViewController.swift
//  lolAPIWrapper
//
//  Created by Mobin Zadeh Kochak on 09/15/2015.
//  Copyright (c) 2015 Mobin Zadeh Kochak. All rights reserved.
//

import UIKit
import lolAPIWrapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialise lolWrapper with api key
        // For API Key register at https://developer.riotgames.com/
        let lolApi = lolApiWrapper(withKey: "REQUIRED_API_KEY");
        
            lolApi.champion()
                   .get()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

