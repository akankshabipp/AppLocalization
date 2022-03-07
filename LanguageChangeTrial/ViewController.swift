//
//  ViewController.swift
//  LanguageChangeTrial
//
//  Created by admin on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var fNameLbl: UILabel!
    @IBOutlet weak var lNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.languageChange(strlng: "en")
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSelectSegmentClic(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            self.languageChange(strlng: "en")
//            fNameLbl.text = "FirstNameKey".localizableString(loc: "en")
//            lNameLbl.text = "LastNameKey".localizableString(loc: "en")
        }
            else{
                self.languageChange(strlng: "es")
//                fNameLbl.text = "FirstNameKey".localizableString(loc: "es")
//                lNameLbl.text = "LastNameKey".localizableString(loc: "es")
            }
        }
    func languageChange(strlng: String){
        fNameLbl.text = "FirstNameKey".localizableString(loc: strlng)
        lNameLbl.text = "LastNameKey".localizableString(loc: strlng)
    }
    }
    

extension String {
    func localizableString (loc: String) -> String{
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
