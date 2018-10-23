//
//  ViewController.swift
//  Algorithm_HunterKnott
//
//  Created by Knott, Hunter on 10/23/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit

class AlgorithmController: UIAlgorithmController
{
    @IBOutlet weak var AlgorithmImage: UIImageView!
    
    @IBOutlet weak var AlgorithmLabel: UILabel!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgoritm()
    }

    private func formatAlgorithm() -> Void
    {
        let title : String = "Making an IOS App"
        
        let stepOne : String = "Hit Create New XCode Project"
        let stepTwo : String = "Choose Single View App"
        let stepThree : String = "Name the project"
        let stepFour : String = "Put the project in your folder used for Swift projects"
        let stepFive : String = "Put AppDelegate, Assets, and Info.plist in a folder together; put Main.storyboard and LaunchScreen in a folder together; put ViewController in a folder; and add a new Swift file, which will be put in its own folder"
        let stepSix : String = "Go to the project screen on the left, and click the choose info.plist button at the top, then choose the info.plist"
        let stepSeven : String = "Save (command + S), Build (command + B), and Run (command + R)"
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]//Like an arraylisyt
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributeString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🌞"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range : NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}
