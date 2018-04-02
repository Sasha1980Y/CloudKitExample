//
//  ViewController.swift
//  CloudKitExample
//
//  Created by Alexander Yakovenko on 4/2/18.
//  Copyright © 2018 Artem Lyksa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var iCloudKeyStore: NSUbiquitousKeyValueStore? = NSUbiquitousKeyValueStore()
    let iCloudTextKey = "iCloudText"
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveToiCloud() {
        iCloudKeyStore?.set(textField.text, forKey: iCloudTextKey)
        iCloudKeyStore?.synchronize()
    }
    
    func iCloudSetUp() {
        if let savedString = iCloudKeyStore?.string(forKey: iCloudTextKey) {
            textField.text = savedString
        }
    }
    
    @IBAction func button1(_ sender: Any) {
        
        print(iCloudKeyStore?.string(forKey: iCloudTextKey) ?? "Not data")
        
    }
    
    @IBAction func save(_ sender: Any) {
        
        saveToiCloud()
        
    }
    

}

