//
//  ViewController.swift
//  Persona
//
//  Created by Kalju Jake Nekvasil on 11/4/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var plansLabel: UILabel!
    
    @IBOutlet weak var weatherTextBox: UITextView!
    @IBOutlet weak var scheduleTextBox: UITextView!
    @IBOutlet weak var plansTextBox: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let babyBlueColor = UIColor(displayP3Red: 131.0/255.0, green: 181.0/255.0, blue: 248.0/255.0, alpha: 1)
        self.view.backgroundColor = babyBlueColor
        
        weatherLabel.textColor = UIColor.white
        scheduleLabel.textColor = UIColor.white
        plansLabel.textColor = UIColor.white
        
        weatherLabel.font = UIFont(name: "HiraginoSans-W6", size: 24)
        scheduleLabel.font = UIFont(name: "HiraginoSans-W6", size: 24)
        plansLabel.font = UIFont(name: "HiraginoSans-W6", size: 24)
        
        weatherTextBox.font = UIFont(name: "HiraginoSans-W3", size: 14)
        scheduleTextBox.font = UIFont(name: "HiraginoSans-W3", size: 14)
        plansTextBox.font = UIFont(name: "HiraginoSans-W3", size: 14)
        
        
        weatherTextBox.layer.cornerRadius = 10
        scheduleTextBox.layer.cornerRadius = 10
        plansTextBox.layer.cornerRadius = 10
       
        
        //------------------------------
//        var imgListArray :NSMutableArray = []
//        for countValue in 1...11
//        {
//
//            var strImageName : String = "c\(countValue).png"
//            var image  = UIImage(named:strImageName)
//            imgListArray .addObject(image)
//        }
//
//        self.imageView.animationImages = imgListArray;
//        self.imageView.animationDuration = 1.0
//        self.imageView.startAnimating()
        //------------------------------
        
        getWeather(city: "Tampa")
        imageView.image = UIImage(named: "suncartoon.PNG")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

