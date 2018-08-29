//
//  ActivityIndicatorViewController.swift
//  ActivityIndicator
//
//  Created by Max Taylor on 8/28/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {

    @IBOutlet weak var loadingButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var tracker: Int = 1
    
    @IBAction func touchButton(_ sender: Any) {
        if(tracker % 2 == 0) {
            activityIndicator.stopAnimating()
            loadingButton.setTitle("Start Loading", for: UIControlState.normal)
            tracker += 1
        }
        else {
            loadingButton.setTitle("Stop Loading", for: UIControlState.normal)
            activityIndicator.startAnimating()
            tracker += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
