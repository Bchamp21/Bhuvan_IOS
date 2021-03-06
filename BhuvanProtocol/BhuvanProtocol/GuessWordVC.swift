//
//  ViewController.swift
//  BhuvanProtocol
//
//  Created by Sarakam,Bhuvan Chandra on 3/29/22.
//

import UIKit
import AVFoundation

class GuessWordVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet var guessWordLBL: UILabel!
    
    @IBOutlet var clueLBL: UILabel!
    
    @IBOutlet var alphabetPV: UIPickerView!
    
    
    @IBOutlet var playAgainBTN: UIButton!

    
    private var words = [Word]()
    
    private let alphabet = "abcdefghijklmnopqrstuvwxyz".uppercased()
    
    private var characterChosen = ""
    
    private var word = Word(token: "", clue: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.alphabetPV.delegate = self
        
        self.alphabetPV.delegate = self
        
        self.words.append(Word(token: "Swift", clue: "An iOS programming language"))
        
        self.words.append(Word(token: "Dog", clue: "An animal that barks"))
        
        self.words.append(Word(token: "Bicycle", clue: "A non-auto two wheeler"))
        
        self.words.append(Word(token: "MacBook", clue: "A computer with iOS installed"))
        
        self.words.append(Word(token: "Bhuvan", clue: "Mr. Nice Guy !"))
        
        self.words.append(Word(token: "TajMahal", clue: "One of the 7 Wonders "))
        
        self.words.append(Word(token: "Water", clue: "Liquid with no colour or taste"))
        
        self.words.append(Word(token: "Tree", clue: "Data Structure with nodes"))
        
        self.words.append(Word(token: "Map", clue: "Data Structure with Key:Value pair"))
        
        self.words.append(Word(token: "SpiderMan", clue: "Famous Marvel movie"))
        
        setGame()
//        mask(a: Word(token: "Dog", clue: "An animal that barks"))
    }

    @IBAction func check(_ sender: UIButton) {
        print("The Character chosen is \(self.characterChosen)")
        if self.characterChosen != "" && self.word.token.lowercased().contains(self.characterChosen.lowercased()){
             AudioServicesPlaySystemSound(SystemSoundID(1035))
            
            for idx in 0..<self.word.token.count{
                let stringIdx = self.word.token.index(self.word.token.startIndex, offsetBy: idx)
                
                if self.characterChosen.lowercased() == String(self.word.token[stringIdx]).lowercased(){
                    self.guessWordLBL.text = self.guessWordLBL.text!.prefix(idx) + self.characterChosen + self.guessWordLBL.text!.dropFirst(idx+1)
                }
            }
        }else{
            AudioServicesPlaySystemSound(SystemSoundID(1100))
        }
        if self.guessWordLBL.text == self.word.token.uppercased(){
            let alert = UIAlertController(title: "Congrats!", message: "You successfully guessed the correct word", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
        }))
            
            self.present(alert, animated: true, completion: nil)
            
            self.playAgainBTN.isEnabled = true
            
    }
    }
    @IBAction func playAgain(_ sender: UIButton) {
        setGame()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        self.alphabet.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        String(self.alphabet[self.alphabet.index(self.alphabet.startIndex, offsetBy: row)])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        self.characterChosen = String(self.alphabet[self.alphabet.index(self.alphabet.startIndex, offsetBy: row)])
    }


private func setGame(){
    self.word = self.words[Int.random(in: 0..<self.words.count)]
    
    mask(a: self.word)
    
    self.clueLBL.text = "Clue: \(self.word.clue)"
    
    self.playAgainBTN.isEnabled = false
}

private func mask(a word: Word){
    self.guessWordLBL.text = ""
    
    let specialCharacters = ["????","????","????","????","????","????","????","????","????","????","????","????"]
    
    for _ in 0..<word.token.count{
        let x = arc4random_uniform(UInt32(specialCharacters.count))
        self.guessWordLBL.text! += specialCharacters[Int(x)]
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
}

