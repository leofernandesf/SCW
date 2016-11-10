//
//  DetalhesViewController.swift
//  SCW-MUSASHI
//
//  Created by leo on 10/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var btShare: UIButton!
    @IBOutlet weak var lbUsiario: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = Layout.sizeImage(width: 24, height: 24, image: #imageLiteral(resourceName: "share2"))
        btShare.setImage(image, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltar(_ sender: AnyObject) {
        _ = self.navigationController?.popViewController(animated: true)
    }

    @IBAction func encaminhar(_ sender: AnyObject) {
        performSegue(withIdentifier: "encaminhar", sender: self)
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
