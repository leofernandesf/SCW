//
//  ChooseLanguageViewController.swift
//  SCW-MUSASHI
//
//  Created by leo on 09/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class ChooseLanguageViewController: UIViewController {

    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    var verificador = false
    let checkOff = Layout.sizeImage(width: 30, height: 30, image: #imageLiteral(resourceName: "check_off"))
    let checkOn = Layout.sizeImage(width: 30, height: 30, image: #imageLiteral(resourceName: "check_on"))
    var selectedButton = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bt1.setImage(checkOff, for: .normal)
        bt2.setImage(checkOn, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func acao1(_ sender: AnyObject) {
        selectedButton = 1
        mudarBotao(bt1: bt1, bt2: bt2)
        
    }

    @IBAction func acao2(_ sender: AnyObject) {

        selectedButton = 2
        mudarBotao(bt1: bt2, bt2: bt1)
    }
    
    func mudarBotao(bt1: UIButton, bt2: UIButton) {
        
        bt1.setImage(checkOn, for: .normal)
        bt2.setImage(checkOff, for: .normal)
        
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
