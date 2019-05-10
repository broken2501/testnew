//
//  ViewController.swift
//  Dicee App
//
//  Created by Joshua Wagner on 11/13/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import UIKit
class ViewController: UIViewController  {
    
 
    
    /*Creates the instance of belt levels class which tracks all of the changes and functionality. For more information on this look at the
     the swift file beltLevels which defines the beltLevels object. Please note below that the mbeltsLevels variable is just an instance of the
     beltLevels class
    */
    var mbeltLevels = beltLevels(currentLevel: "white")
    
    
    /* The two variables below rightTextField and leftTextField are responsible for allowing you to access the text fields associated with the apps main screen. These two varibales are instances of the UITextField Class. These instances have attributes and methods that allow for this manipulation of these text boxs. To see all the attributes and methods consult the apples documentation on the topic https://developer.apple.com/documentation/uikit/uitextfield?changes=_5
    */
    @IBOutlet weak var rightTextField: UITextField!
    @IBOutlet weak var leftTextField: UITextField!
    
   
   

    override func viewDidLoad()  {
        super.viewDidLoad()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    
    
    /*
     Below are the functions that are responible for adding actions to the buttons on the app page. There are 6 buttons on this page.
     
     
     There is the roll button which is responsible for activating a method inside mbeltLevels instance of beltlevel class. This method then creates a random
     selection from the correct belt level. Please refer to the beltLevels.swift file for more information.
    */
    @IBAction func rollButtonPressed2(_ sender: Any) {
        
        rightTextField.text = mbeltLevels.randomMoveAsString()
        leftTextField.text = mbeltLevels.randomMoveAsString()
        
    }
    
    /*  The Buttons below are responsible for changing the current level of the mbeltLevels instances
        This allows you to use the correct list of techniquies based on belt Level
     */
    
    @IBAction func whiteButtonPressed(_ sender: Any) {
        mbeltLevels.currentLevel = "white"
    }
    
    @IBAction func blueButtonPressed(_ sender: Any) {
        mbeltLevels.currentLevel = "blue"
       
    }
    
    @IBAction func purpleButtonPressed(_ sender: Any) {
        mbeltLevels.currentLevel = "purple"

    }
    @IBAction func brownButtonPresssed(_ sender: Any) {
        mbeltLevels.currentLevel = "brown"

    }
    
    @IBAction func blackButtonPressed(_ sender: Any) {
        mbeltLevels.currentLevel = "black"

    }
}
