//
//  ViewController.swift
//  BhuvanProtocol
//
//  Created by Sarakam,Bhuvan Chandra on 3/29/22.
//

import UIKit

class GuessWordVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var guessWordLBL: UILabel!
    
    @IBOutlet var clueLBL: UILabel!
    
    @IBOutlet var alphabetPV: UIPickerView!
    
    
    @IBOutlet var playAgainBTN: UIButton!

    
    private var words = [Word]()
    
    private let alphabet = "abcdefghijkmnopqrstuvwxyz".uppercased()
    
    private var characterChosen = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.alphabetPV.delegate = self
        
        self.alphabetPV.delegate = self
        
        self.words.append(Word(token: "Swift", clue: "An iOS programming language"))
        
        self.words.append(Word(token: "Dog", clue: "An animal that barks"))
        
        self.words.append(Word(token: "Bicycle", clue: "A non-auto two wheeler"))
        
        self.words.append(Word(token: "MacBook", clue: "A computer with iOS installed"))
    }

    @IBAction func check(_ sender: UIButton) {
        print("The Character chosen is \(self.characterChosen)")
    }
    @IBAction func playAgain(_ sender: UIButton) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        1
    }
    
    func pickerView(_pickerView: UIPickerView, numberOfComponents component: Int) -> Int{
        self.alphabet.count
    }
    
    func pickerView(_pickerView: UIPickerView, titleForRow row: Int) -> Int{
        self.alphabet.count
    }
    
    func pickerView(_pickerView: UIPickerView, nunberOfComponents component: Int) -> Int{
        self.alphabet.count
    }
}


struct Word{
    var token: String
    var clue: String
    
    init(token: String, clue: String){
        self.token = token
        self.clue = clue
    }
}
