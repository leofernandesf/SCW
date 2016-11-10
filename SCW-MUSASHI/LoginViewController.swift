//
//  LoginViewController.swift
//  SCW-MUSASHI
//
//  Created by leo on 08/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfSenha: UITextField!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Layout.tfLayout(tfs: [tfEmail,tfSenha])
    }
    
    @IBAction func Entrar(_ sender: AnyObject) {
        let url = "http://191.168.20.202/scw/ws_mobile/login/"
        Helper.POST(urlString: url, login: tfEmail.text!, senha: tfSenha.text!) { (success, userInformatios) in
            if success == 1 {
                let job_tittle = userInformatios["job_tittle"] as! String
                if job_tittle == "Admin" || job_tittle == "Admin" {
                    self.defaults.set(3, forKey: "contMenu")
                } else {
                    self.defaults.set(2, forKey: "contMenu")
                }
                print(self.defaults.object(forKey: "contMenu"))
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "logado", sender: self)
                }
            }
            
        }
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

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
