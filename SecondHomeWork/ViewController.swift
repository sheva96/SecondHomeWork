//
//  ViewController.swift
//  SecondHomeWork
//
//  Created by Евгений Шевченко on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var valueRedColorLabel: UILabel!
    @IBOutlet var valueGreenColorLabel: UILabel!
    @IBOutlet var valueBlueColorLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsRedSlider()
        settingsGreenSlider()
        settingsBlueSlider()
    }
    
    override func viewWillLayoutSubviews() {
        settingsRgvView()
    }

    // MARK: - Actions Sliders
    @IBAction func actionRedSlider() {
        valueRedColorLabel.text = String(format: "%.2f", redColorSlider.value)
    }
    @IBAction func actionGreenSlider() {
        valueGreenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
    }
    @IBAction func actionBlueSlider() {
        valueBlueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
    
    // MARK: - Settings RGB View
    private func settingsRgvView() {
        rgbView.layer.cornerRadius = 10
        rgbView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                          green: CGFloat(greenColorSlider.value),
                                          blue: CGFloat(blueColorSlider.value),
                                          alpha: 1)
    }
    
    // MARK: - Sliders Settings
    private func settingsRedSlider() {
        redColorSlider.minimumTrackTintColor = .red
        redColorSlider.maximumTrackTintColor = UIColor.red.withAlphaComponent(0.4)
    }
    private func settingsGreenSlider() {
        greenColorSlider.minimumTrackTintColor = .green
        greenColorSlider.maximumTrackTintColor = UIColor.green.withAlphaComponent(0.4)
    }
    private func settingsBlueSlider() {
        blueColorSlider.minimumTrackTintColor = .blue
        blueColorSlider.maximumTrackTintColor = UIColor.blue.withAlphaComponent(0.4)
    }
}

