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
    @IBOutlet weak var myTable: UITableView!
    
    
    var recebe: [String: Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = Layout.sizeImage(width: 24, height: 24, image: #imageLiteral(resourceName: "share2"))
        btShare.setImage(image, for: .normal)
        let usuario = recebe["employee"] as! Int
        print(usuario)
        self.lbUsiario.text = "#\(usuario)"
        myTable.tableFooterView = UIView(frame: .zero)
//        if let title = recebe["employee"] as? String {
//            print(title)
//            self.lbUsiario.text = title
//        }
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
    
    @IBAction func comentar(_ sender: AnyObject) {
        performSegue(withIdentifier: "comentar", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "comentar" {
            let vc = segue.destination as! ComentarViewController
            if let usuario = recebe["employee"] as? Int {
                vc.titulo = usuario
            }
            
            if let id = recebe["id"] as? Int {
                vc.idIssue = id
            }
            
        }
    }
    

}


extension DetalhesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetalhe") as! Cell1TableViewCell
        cell.informacoes = recebe
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

extension DetalhesViewController: UITableViewDelegate {
    
}
