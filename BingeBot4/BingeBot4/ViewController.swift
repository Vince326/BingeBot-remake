//
//  ViewController.swift
//  BingeBot4
//
//  Created by Vincent Hunter on 6/1/20.
//  Copyright © 2020 Vincent Hunter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLbl: UILabel!
    @IBOutlet weak var randomShowLbl: UILabel!
    @IBOutlet weak var bingeBotSpokenLbl: UILabel!
    @IBOutlet weak var addshowTxtField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var rndomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        rndomShowStackView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func updateShowsLbl () {
        showsLbl.text = shows.joined(separator: ", ")
    }

    @IBAction func addShowbtnWasPressed(_ sender: Any) {
        guard let showName = addshowTxtField.text, !showName.isEmpty else  {
                return
            
        }
        
        
    
        shows.append(showName)
        updateShowsLbl()
        addshowTxtField.text = ""
        showsStackView.isHidden = false
        
        if(shows.count > 1) {
            rndomShowStackView.isHidden = false
            bingeBotSpokenLbl.isHidden = true
            randomShowLbl.isHidden = true
        }
        
    }
    @IBAction func randomBingeShowBtnWasPressed(_ sender: Any) {
        
        randomShowLbl.text = shows.randomElement()
        randomShowLbl.isHidden = false
        bingeBotSpokenLbl.isHidden = false
    }
    
}
