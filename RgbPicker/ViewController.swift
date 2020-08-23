//
//  ViewController.swift
//  RgbPicker
//
//  Created by Aleksandr on 23.08.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redStateLabel: UILabel!
    @IBOutlet weak var greenStateLabel: UILabel!
    @IBOutlet weak var blueStateLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        reDraw()
    }
    
    @IBAction func redSliderAction() { reDraw() }
    @IBAction func greenSliderAction() { reDraw() }
    @IBAction func blueSliderAction() { reDraw() }
    
    private func reDraw() {
        let actualRed = redSlider.value
        let aclualGreen = greenSlider.value
        let actualBlue = blueSlider.value
        changeColor(red: actualRed, green: aclualGreen, blue: actualBlue)
        setLabelCurrentValues(red: actualRed, green: aclualGreen, blue: actualBlue)
    }
    
    private func changeColor(red: Float, green: Float, blue: Float) {
        colorView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }
    
    private func setLabelCurrentValues(red: Float, green: Float, blue: Float) {
        redStateLabel.text = String(format: "%.2f", red)
        greenStateLabel.text = String(format: "%.2f", green)
        blueStateLabel.text = String(format: "%.2f", blue)
    }
}
