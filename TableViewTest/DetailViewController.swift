//
//  DetailViewController.swift
//  TableViewTest
//
//  Created by Grey Patterson on 2017-04-03.
//  Copyright © 2017 Grey Patterson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    /// The title label - main thing being displayed
    @IBOutlet weak var titleLabel: UILabel!
    /// Temporarily used to store the title
    var titleLabelText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tLT = titleLabelText{
            titleLabel.text = tLT
        }

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
