//
//  beltLevels.swift
//  Dicee App
//
//  Created by user on 6/4/18.
//  Copyright © 2018 Joshua Wagner. All rights reserved.
//

import Foundation


/*
 This class defines the beltLevel class which has methods and attributes responsable with selecting the correct technique based on the what the current level.
 */
class beltLevels  {
    
    // Part of class responsible for creating a new instance of a class. This init function is what is called when this class is created in the ViewControll function. init is a resevered function name in swift. For more information on this look up information on constructor functions and methods
    init(currentLevel: String){
        
        self.currentLevel = currentLevel
        
    }
    
    // variable responsible for keeping the current belt level of an initilized class
    var currentLevel = String()
    
    // Block of code below indexs Techniques with an associated belt level. Below is a data structure called a dictonary. To get more informations on dictonaries
    var beltLevelDict=[
        
        "white" : ["Arm Bar", "Triangle Choke","Omomplata", "Close Guard Pass","Kimura Grip", "Hip Escape" , "Americana" , "Reverse Tirangle Choke", "Rear Naked Choke", "Score 4 points", "You are losing by 1 adv"],
        "blue" : ["Guard Sweep", " Gain Side Control","De La Riva Guard", "De La Riva Guard Sweep","Baseball Bat Choke", "Loop Choke", "Score 6 points"],
        "purple" : [ "x guard" , "z guard" , "kimura transition" , "escape from arm bar" , "pass spider guard" , "escape the back" , "Spider Guard" , "transition from back take", "Score 8 points"],
        "brown" : ["DLR sweep 2x before sub", "Hold back for 2 minutes.","Take side control for 4 minutes", "Control in your guard for 4 mins","Hold mount for 2 minutes", "Pass a Guard x2 before Sub", "Score 10 points"],
        "black" : ["Hold back for 4 minutes", "Control 50/50 for 2 minutes","Pass guard w/o wrist control", "Only use lapel grips","You are losing", "Sub attempt with 15 seconds left", "You are losing by 1 point", "You are winning by an advantage"]
    ]
    
    // Selects move based on the current level of belt selected. This is a method inside the beltLevels class. It allows for the selection of a belt level and then returns one of the techniques in the dictonary above basesd on whatever the current belt level is selected.
    func  randomMoveAsString () -> String {
        // Grabs a random indexed based on the length of the current belt level associated with the class
        let random_index =  arc4random_uniform(UInt32((self.beltLevelDict[currentLevel]?.count)!)) + 1;        // Returns the string value of a randome string
        return beltLevelDict[currentLevel]![Int(random_index)-1]    }
    
}
