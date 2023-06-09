//
//  ViewController.swift
//  InterfaceBuilderLabo1-1
//
//  Created by macos on 18/03/1402 AP.
//

import UIKit

class ViewController: UIViewController {

    //-- Outlets
    
    @IBOutlet weak var txtOutput: UITextField!
    @IBOutlet weak var sldUserGuess: UISlider!
    @IBOutlet weak var btnGuess: UIButton!
    
    
    //-- Variables globales
    let iChiffreMystere = Int.random(in: 0...100)
    
    //-- Fonctions
    @IBAction func sldUserGuess(_ sender: Any) {
        txtOutput.text = String(Int(sldUserGuess.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnGuess(_ sender: Any) {
        if iChiffreMystere == Int(sldUserGuess.value){
            txtOutput.text = "Gagner!"
        } else {
            if iChiffreMystere > Int(sldUserGuess.value){
                txtOutput.text = "Gagner!"
                txtOutput.text = "Trop petit"
            } else {
                txtOutput.text = "Trop grand"
                
            }
        }
    }
    
}


