//
//  ViewController.swift
//  AugustApps
//
//  Created by Alexey Yarov on 25/08/2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvas: Canvas!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func undoButtonTapped() {
        canvas.undo()
    }
    @IBAction func clearButtonTapped() {
        canvas.clear()
    }
    @IBAction func saveButtonTapped() {
        // PhotoLibraryManager.shared.saveImage (canvasView: canvas)
        // in progress
    }
    
    @IBAction func sliderChangeValue() {
        canvas.setStrokeWidth(width: slider.value)
    }
    
    @IBAction func colorButtonTapped(_ sender: UIButton) {
        canvas.setStrokeColor(color: sender.backgroundColor ?? .black)
        slider.tintColor = sender.backgroundColor ?? .black
        slider.thumbTintColor = sender.backgroundColor ?? .black
    }
    
    
}

