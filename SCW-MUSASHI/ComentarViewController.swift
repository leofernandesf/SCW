//
//  ComentarViewController.swift
//  SCW-MUSASHI
//
//  Created by leo on 11/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class ComentarViewController: UIViewController {
    @IBOutlet weak var lbTitulo: UILabel!
    @IBOutlet weak var tvComentario: UITextView!

    var titulo: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        lbTitulo.text = titulo
        tvComentario.becomeFirstResponder()
        tvComentario.layer.borderWidth = 1.0
        tvComentario.layer.borderColor = UIColor.white.cgColor
        tvComentario.layer.cornerRadius = 5
        tvComentario.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltar(_ sender: AnyObject) {
        _ = self.navigationController?.popViewController(animated: true)
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
